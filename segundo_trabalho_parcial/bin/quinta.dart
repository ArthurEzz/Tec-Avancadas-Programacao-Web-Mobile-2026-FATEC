//Desenvolva um programa que calcule o imposto de renda de uma pessoa com base em seu salário mensal.
// As alíquotas são:
//Salário até R$ 2.000,00: Isento (0% de imposto)
//Salário de R$ 2.000,01 a R$ 5.000,00: 10% de imposto
//Salário de R$ 5.000,01 a R$ 10.000,00: 15% de imposto
//Salário acima de R$ 10.000,00: 20% de imposto
//O programa deve ler o salário, calcular o valor do imposto e exibir:
//Salário bruto
//Valor do imposto
//Salário líquido (após desconto)

import 'dart:io';

double imposto = 0;
double descontado = 0;


void main() {
  stdout.write("\nQual é o seu salário mensal?\n");
  String? mensal = stdin.readLineSync();
  if (mensal == null) {
    stdout.write("Valor Inválido!\n");
    return;
  }
  double salario = double.tryParse(mensal)!;

  if (salario <= 2000) {
    stdout.write("Seu salário permanece em ${salario.toStringAsFixed(2)} Reais\n"
    );
  } else if (salario > 2000 && salario <= 5000) {
    imposto = (salario * 0.10);
    descontado = salario - imposto!;
    stdout.write(
      "Esse é o seu salário bruto: ${salario.toStringAsFixed(2)}\n"
      "Seu salário terá ${imposto.toStringAsFixed(2)} (10%) de imposto descontado, ou seja, você receberá: ${descontado.toStringAsFixed(2)} Reais\n",
    );
  } else if (salario > 5000 && salario <= 10000) {
    imposto = (salario * 0.15);
    descontado = salario - imposto!;
    stdout.write(
      "Esse é o seu salário bruto: ${salario.toStringAsFixed(2)}\n"
      "Seu salário terá ${imposto.toStringAsFixed(2)} (15%) de imposto descontado, ou seja, você receberá: ${descontado.toStringAsFixed(2)} Reais\n",
    );
  } else if (salario > 10000) {
    imposto = (salario * 0.20);
    descontado = salario - imposto!;
    stdout.write(
      "Esse é o seu salário bruto: ${salario.toStringAsFixed(2)}\n"
      "Seu salário terá ${imposto.toStringAsFixed(2)} (20%) de imposto descontado, ou seja, você receberá: ${descontado.toStringAsFixed(2)} Reais\n",
    );
  }
}
