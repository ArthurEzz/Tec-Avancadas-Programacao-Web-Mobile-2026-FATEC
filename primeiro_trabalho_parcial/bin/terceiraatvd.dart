import 'dart:io';

//3. Converter Celsius para Fahrenheit:
  //Desenvolva um programa que leia uma temperatura em graus Celsius e converta para Fahrenheit.
  //O programa deve mostrar o resultado ao usuário.

void main() {
stdout.write("\n== Conversão de Celsius para Fahrenheit");
  stdout.write("\nEscreva um valor em Graus Celsius:\n");
  String graus = stdin.readLineSync()!;
  graus = graus.replaceAll(",", ".");
  double? celsius = double.tryParse(graus);

  if (celsius == null) {
    stdout.write("Valor inválido!\n");
  } else {
    double fahrenheit = (celsius * 1.8) + 32;
    stdout.write("\n$celsius° Celsius em Fahrenheit ficaria: $fahrenheit\n");
  }

}
