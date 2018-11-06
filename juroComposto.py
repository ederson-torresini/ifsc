import classe
total = 800.0
entrada = 0.0
juro = 1.02
parcelas = 4
montante = total - entrada
















objeto = classe.matematicaFinanceira()
parcela = objeto.juroComposto(montante, juro, parcelas) / parcelas
print("Parcela: " + str(round(parcela, 2)))
