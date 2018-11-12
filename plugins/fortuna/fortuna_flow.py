from errbot import botflow, FlowRoot, BotFlow


class FortunaFlow(BotFlow):
    'Fluxo das mensagens de fortuna'

    @botflow
    def adivinha(self, flow: FlowRoot):
        'Adivinhação de autor'
        pergunta = flow.connect('frase', auto_trigger=True)
        resposta = pergunta.connect('autor')
        placar = resposta.connect('placar',
                                  predicate=lambda ctx: 'autor' in ctx)
