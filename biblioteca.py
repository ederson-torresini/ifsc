






def juroComposto(quantidade, taxaDeJuros, qtdeParcelas):
    meses = []
    for mes in range(0, qtdeParcelas):
        if (mes == 0):
            meses.append(quantidade * taxaDeJuros)
        else:
            meses.append(meses[mes - 1] * taxaDeJuros)
        print("Mês " + str(mes + 1) + ": " + str(round(meses[mes], 2)))
    return meses[qtdeParcelas - 1]
