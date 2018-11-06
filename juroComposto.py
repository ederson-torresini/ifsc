
total = 800.0
entrada = 0.0
juro = 1.02
parcelas = 4
montante = total - entrada


meses = []

if (len(meses) == 0):
    meses.append(montante * juro)
print("Mês 1: " + str(round(meses[0], 2)))

meses.append(meses[0] * juro)
print("Mês 2: " + str(round(meses[1], 2)))

meses.append(meses[1] * juro)
print("Mês 3: " + str(round(meses[2], 2)))

meses.append(meses[2] * juro)
print("Mês 4: " + str(round(meses[3], 2)))

parcela = meses[3] / 4
print("Parcela: " + str(round(parcela, 2)))
