from errbot import BotPlugin, botcmd, botmatch
from pymongo import MongoClient


class FortunaBot(BotPlugin):
    'Mensagens de fortuna'

    @botcmd
    def frase(self, msg, args):
        'Sorteia uma frase'
        # Sorteia uma frase armazenada no MongoDB
        frases = MongoClient().chatbot.frases
        consulta = frases.aggregate([{'$sample': {'size': 1}}])
        # Seleciona a primeira string da lista (a frase)
        frase = [doc for doc in consulta][0]
        # Armazena o autor para verificar a reposta
        msg.ctx['autor'] = frase['autor']
        yield 'A frase é: "' + frase['frase'] + '"'
        yield 'Quem disse isso?'

    @botmatch(r'^[A-Z].*$', flow_only=True)
    def autor(self, msg, args):
        'Qual o autor da frase?'
        # Testa se as variáveis existem
        try:
            resposta = args.group(0)
            certa = msg.ctx['autor']
        except:
            # Mensagem caso haja algum problema com o fluxo
            yield "Autor sem frase? Tente primeiro: /frase"
        else:
            # Verifica a resposta do usuário
            if resposta == certa:
                # Resposta certa
                yield 'Resposta E......xata!'
                self.pontuacao(str(msg.frm), 1)
            else:
                # Resposta errada
                yield 'Quase, pequeno gafanhoto: ' + certa

    @botcmd
    def placar(self, msg, args):
        'Mostra o placar o jogador'
        return 'Pontuação: ' + self.pontuacao(str(msg.frm))

    def pontuacao(self, jogador, atualizar=None):
        placar = MongoClient().chatbot.placar
        # Verifica se o jogador existe no placar.
        pontos = placar.find_one({'jogador': jogador})
        if pontos is None:
            # Jogador não existe. Criando com pontuação zerada.
            placar.insert_one({'jogador': jogador, 'pontos': 0})
        # Verifica se é para atualizar o placar
        if atualizar is not None:
            # Atualizando placar...
            placar.update({'jogador': jogador},
                          {"$inc": {"pontos": atualizar}})
        # Mostrando o atual resultado para o jogador
        pontos = placar.find_one({'jogador': jogador})
        print(pontos['pontos'])
        return str(pontos['pontos'])
