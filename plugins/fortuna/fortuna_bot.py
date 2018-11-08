from errbot import BotPlugin, botcmd, botmatch
from pymongo import MongoClient

class FortunaBot(BotPlugin):
    'Mensagens de fortuna'

    @botcmd
    def frase(self, msg, args):
        'Sorteia uma frase'
        frases = MongoClient().chatbot.frases
        consulta = frases.aggregate([{ '$sample': { 'size': 1 } }])
        frase = [doc for doc in consulta][0]
        msg.ctx['autor'] = frase['autor']
        yield 'A frase é: "' + frase['frase'] + '"'
        yield 'Quem disse isso?'


    @botmatch(r'^[A-Z].*$', flow_only=True)
    def autor(self, msg, args):
        'Qual o autor da frase?'
        try:
            resposta = args.group(0)
            certa = msg.ctx['autor']
        except:
            yield "Autor sem frase? Tente primeiro: /frase"
        else:
            if resposta == certa:
                yield 'Resposta E......xata!'
            else:
                yield 'Quase, pequeno gafanhoto: ' + msg.ctx['autor']


    @botcmd
    def boi(self, msg, args):
        'Teste de envio de imagem: o ano do boi chinês'
        stream = self.send_stream_request(msg.frm,
                                          open('plugins/fortuna/boi.gif', 'rb'),
                                          name='boi.gif',
                                          stream_type='photo')
