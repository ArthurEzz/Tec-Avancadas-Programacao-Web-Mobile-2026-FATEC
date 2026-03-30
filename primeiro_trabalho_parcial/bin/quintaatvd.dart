import 'dart:io';

//5. Calcular o rendimento de um táxi:
//Escreva um programa que ajude um motorista de táxi a calcular o rendimento do seu carro no dia.
//O programa deve ler as seguintes informações: a marcação do hodômetro no início e no final do dia,
//o número de litros de combustível consumidos e o valor total recebido dos passageiros.
//Com esses dados, calcule a média de consumo de combustível (em Km/L) e o lucro líquido do dia,
//considerando que o preço do combustível é R$ 6,50 por litro.
void main() {
  stdout.write("\nQual foi a marcação do hodômetro no início do dia?\n");
  String? metros = stdin.readLineSync();
  if (metros == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double hodometroinicio = double.tryParse(metros)!;

  stdout.write("\nQual foi a marcação do hodômetro no final do dia?\n");
  String? metrosfinal = stdin.readLineSync();
  if (metrosfinal == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double hodometrofinal = double.tryParse(metrosfinal)!;

  stdout.write("Quantos litros de combustível foi consumido?\n");
  String? combustivel = stdin.readLineSync();
  if (combustivel == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double gasosa = double.tryParse(combustivel)!;

  stdout.write("Quanto você recebeu o dia todo?\n");
  String? dinheiro = stdin.readLineSync();
  if (dinheiro == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double recebido = double.tryParse(dinheiro)!;

  double hodometro = hodometrofinal - hodometroinicio;
  double consumomedio = hodometro / gasosa;
  double gasosafinal = gasosa * 6.5;
  double valorliquido = recebido - gasosafinal;

  stdout.write(
    "Esse é o consumo médio de combustível do seu carro: $consumomedio Km/L\nE esse o lucro líquido de hoje: $valorliquido Reais\n",
  );
}
