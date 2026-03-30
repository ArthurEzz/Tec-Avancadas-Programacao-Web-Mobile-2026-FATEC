import 'dart:io';

//4. Calcular rendimento de depósito na poupança:
  //Crie um programa que leia o valor de um depósito em uma conta poupança e calcule o valor após um mês de aplicação.
  // Considere um rendimento de 0,5% ao mês e mostre o valor final após o rendimento.

void main() {
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
