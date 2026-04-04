//Uma bomba de combustível cobra diferentes preços conforme o tipo:
//Gasolina comum: R$ 6,50 por litro
//Gasolina premium: R$ 7,80 por litro
//Diesel: R$ 5,90 por litro
//Álcool: R$ 4,20 por litro
//O programa deve ler o tipo de combustível (1, 2, 3 ou 4) e a quantidade de litros desejada. Calcule e exiba:
//Tipo de combustível escolhido
//Quantidade de litros
//Preço unitário
//Valor total a pagar
//Se o tipo de combustível for inválido, exiba: "Combustível inválido."

import 'dart:io';

int combustivel() {
  stdout.write("Escolha um tipo de combustível:\n");
  stdout.write("1 - Gasolina comum: 6,50 Reais por litro\n");
  stdout.write("2 - Gasolina premium: 7,80 Reais por litro\n");
  stdout.write("3 - Diesel: 5,90 Reais por litro\n");
  stdout.write("4 - Álcool: 4,20 Reais por litro\n");
  String? oleo = stdin.readLineSync();
  if (oleo == null) {
    stdout.write("Combustível inválido\n");
    exit(0);
  }
  int combustivel = int.tryParse(oleo)!;
  if (combustivel < 1 || combustivel > 4) {
    stdout.write("Código inválido\n");
    exit(0);
  }
  return combustivel;
}

void main() {
  stdout.write("== Sistema do Posto ==\n");
  int combustivel = combustivel();
}
