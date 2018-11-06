
total = 800.0
entrada = 0.0
juro = 1.02
parcelas = 4
montante = total - entrada





mes1 = montante * juro
print("Mês 1: " + str(round(mes1, 2)))

mes2 = mes1 * juro
print("Mês 2: " + str(round(mes2, 2)))

mes3 = mes2 * juro
print("Mês 3: " + str(round(mes3, 2)))

mes4 = mes3 * juro
print("Mês 4: " + str(round(mes4, 2)))

parcela = mes4 / 4
print("Parcela: " + str(round(parcela, 2)))
