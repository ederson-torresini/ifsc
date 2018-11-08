from errbot import botflow, FlowRoot, BotFlow

class FortunaFlow(BotFlow):
    'Fluxo das mensagens de fortuna'

    @botflow
    def adivinha(self, flow: FlowRoot):
        'Adivinhação de autor'
        first_step = flow.connect('frase', auto_trigger=True)
        second_step = first_step.connect('autor')
