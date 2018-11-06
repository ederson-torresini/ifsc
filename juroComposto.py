
total = 800.0
entrada = 0.0
juro = 1.02
parcelas = 4
montante = total - entrada


meses = []
for mes in range(0, parcelas):
    if (mes == 0):
        meses.append(montante * juro)
    else:
        meses.append(meses[mes - 1] * juro)
    print("Mês " + str(mes + 1) + ": " + str(round(meses[mes], 2)))








parcela = meses[parcelas - 1] / parcelas
print("Parcela: " + str(round(parcela, 2)))
