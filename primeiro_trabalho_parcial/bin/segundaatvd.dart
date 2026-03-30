import 'dart:io';

//2. Calcular o salário de um funcionário:
  //Escreva um programa que leia o valor que um funcionário recebe por hora e o número de horas trabalhadas no mês.
  // Calcule e exiba o total do salário mensal do funcionário.

void main() {
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
}
