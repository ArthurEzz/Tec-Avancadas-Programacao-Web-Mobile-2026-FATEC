import 'dart:ffi';
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
  //2. Calcular o salário de um funcionário:
  //Escreva um programa que leia o valor que um funcionário recebe por hora e o número de horas trabalhadas no mês.
  // Calcule e exiba o total do salário mensal do funcionário.

  stdout.write("\n== Salário Mensal ==\n");
  stdout.write("Quanto você recebe por hora?\n");
  String recebe = stdin.readLineSync()!;
  recebe = recebe.replaceAll(",", ".");

  double? salario = double.tryParse(recebe);
  if (salario == null) {
    stdout.write('Valor inválido!\n');
  } else {
    stdout.write(
      "Credo, isso é bem pouco. Mas neste mês, quantas horas você trabalhou?\n",
    );
    String horario = stdin.readLineSync()!;
    horario = horario.replaceAll(",", ".");
    double? horas = double.tryParse(horario);
    if (horas == null) {
      stdout.write("Valor inválido!\n");
    } else {
      double salariomensal = horas * salario;
      stdout.write("\nNeste mês, o seu salário será: $salariomensal\n\n");
    }
  }
  //3. Converter Celsius para Fahrenheit:
  //Desenvolva um programa que leia uma temperatura em graus Celsius e converta para Fahrenheit.
  //O programa deve mostrar o resultado ao usuário.

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

  //4. Calcular rendimento de depósito na poupança:
  //Crie um programa que leia o valor de um depósito em uma conta poupança e calcule o valor após um mês de aplicação.
  // Considere um rendimento de 0,5% ao mês e mostre o valor final após o rendimento.

  stdout.write("\n== Sistema de Rendimento ==\n");
  stdout.write("Quando você quer depositar na sua poupança?:\n");
  String dinheiro = stdin.readLineSync()!;
  dinheiro = dinheiro.replaceAll(",", ".");
  double? poupanca = double.tryParse(dinheiro);

  if (poupanca == null) {
    stdout.write("Valor inválido!\n");
  } else {
    double rendimento = poupanca * 0.005;
    double valortotal = rendimento + poupanca;
    stdout.write("Seu dinheiro rendeu $rendimento Reais. Ou seja, seu valor final ficou $valortotal Reais.\n\n");
  }
}
