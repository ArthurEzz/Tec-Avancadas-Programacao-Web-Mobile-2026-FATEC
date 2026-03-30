import 'dart:io';

//1. Converter metros para centímetros:
//Crie um programa que leia um valor em metros e o converta para centímetros.
// Exiba o resultado de forma clara, informando a unidade de medida.^

void main() {
  stdout.write("\n== Sistema de Conversão ==\n");
  stdout.write("Digite um número em Metro para convertê-lo para centímetro:\n");
  String metro = stdin.readLineSync()!;
  metro = metro.replaceAll(",", ".");
  double? metros = double.tryParse(metro);
  if (metros == null) {
    stdout.write("Valor inválido!\n");
  } else {
    double centi = (metros * 100);

    stdout.write(
      'Este é o valor em metro que você digitou: $metro\nE aqui ele convertido para centimetros: $centi\n\n',
    );
  }
}
