from errbot import BotPlugin, botcmd, botmatch
from pymongo import MongoClient


class FortunaBot(BotPlugin):
    'Mensagens de fortuna'


    @botcmd
    def frase(self, msg, args):
        'Sorteia uma frase'

        # Sorteia uma frase armazenada no MongoDB
        frases = MongoClient().chatbot.frases
        consulta = frases.aggregate([{ '$sample': { 'size': 1 } }])

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
            else:
                # Resposta errada
                yield 'Quase, pequeno gafanhoto: ' + certa
