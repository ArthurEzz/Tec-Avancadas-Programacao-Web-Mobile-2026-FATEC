//Uma companhia de energia cobra de acordo com o consumo mensal (em kWh):
//Até 100 kWh: R$ 0,80 por kWh
//De 101 a 300 kWh: R$ 1,10 por kWh
//De 301 a 500 kWh: R$ 1,40 por kWh
//Acima de 500 kWh: R$ 1,80 por kWh
//Além disso, se o consumo ultrapassar 400 kWh, há uma taxa extra de 10% sobre o valor total.
//O programa deve ler o consumo em kWh e exibir:
//Consumo mensal
//Valor base da conta
//Taxa extra (se aplicável)
//Valor total da conta

import 'dart:io';

void main() {
  stdout.write("== Consumo Mensal de kWh ==\n");
  stdout.write("Quantos kWh você consumiu neste mês?\n");
  String? gasto = stdin.readLineSync();
  if (gasto == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double consumo = double.tryParse(gasto)!;

  if (consumo <= 100) {
    double total = consumo * 0.8;
    stdout.write(
      "Você consumiu $consumo kWh este mês, o seu valor base ficou ${total.toStringAsFixed(2)} reais\n",
    );
    stdout.write(
      "Como não tem taxa extra, o seu valor total ficará ${total.toStringAsFixed(2)} reais a pagar\n",
    );
  } else if (consumo >= 101 && consumo <= 300) {
    double total = consumo * 1.1;
    stdout.write(
      "Você consumiu $consumo kWh este mês, o seu valor base ficou ${total.toStringAsFixed(2)} reais\n",
    );
    stdout.write(
      "Como não tem taxa extra, o seu valor total ficará ${total.toStringAsFixed(2)} reais a pagar\n",
    );
  } else if (consumo >= 301 && consumo <= 500) {
    if (consumo > 400) {
      double total = consumo * 1.4;
      stdout.write(
        "Você consumiu $consumo kWh este mês, o seu valor base ficou ${total.toStringAsFixed(2)} reais\n",
      );
      total = total + (total * 0.10);
      stdout.write(
        "Como você gastou mais de 400 kWh neste mês, terá um acréscimo de 10% no valor base, ou seja, o seu valor total ficará ${total.toStringAsFixed(2)} reais a pagar\n",
      );
    } else {
      double total = consumo * 1.4;
      stdout.write(
        "Você consumiu $consumo kWh este mês, o seu valor base ficou ${total.toStringAsFixed(2)} reais\n",
      );
      stdout.write(
        "Como não tem taxa extra, o seu valor total ficará ${total.toStringAsFixed(2)} reais a pagar\n",
      );
    }
  }
  else if(consumo > 500){
    double total = consumo * 1.8;
      stdout.write(
        "Você consumiu $consumo kWh este mês, o seu valor base ficou ${total.toStringAsFixed(2)} reais\n",
      );
      total = total + (total * 0.10);
      stdout.write(
        "Como você gastou mais de 400 kWh neste mês, terá um acréscimo de 10% no valor base, ou seja, o seu valor total ficará ${total.toStringAsFixed(2)} reais a pagar\n",
      );
  }
}
