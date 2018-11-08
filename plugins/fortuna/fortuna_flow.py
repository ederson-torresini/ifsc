from errbot import botflow, FlowRoot, BotFlow

class FortunaFlow(BotFlow):
    """ Conversation flows for Errbot"""

    @botflow
    def adivinha(self, flow: FlowRoot):
        """Frase socrática"""
        first_step = flow.connect('frase', auto_trigger=True)
        second_step = first_step.connect('autor')
