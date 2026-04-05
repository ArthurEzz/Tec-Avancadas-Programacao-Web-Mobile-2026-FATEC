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
    stdout.write("Combultível inválido\n");
    exit(0);
  }
  return combustivel;
}

void main() {
  stdout.write("== Sistema do Posto ==\n");
  int combustao = combustivel();
  stdout.write("Quantos Litros você quer?\n");
  String? litragem = stdin.readLineSync();
  if (litragem == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double litro = double.tryParse(litragem)!;

  switch (combustao) {
    case 1:
      stdout.write(
        "Você pediu $litro litros de Gasolina Comum, cujo preço unitário é 6,50 reais por litro\n",
      );
      double total =  (litro * 6.5);
      stdout.write("Valor total a se pagar ficará $total reais\n");
      break;

      case 2:
      stdout.write(
        "Você pediu $litro litros de Gasolina Premium, cujo preço unitário é 7,80 reais por litro\n",
      );
      double total =  (litro * 7.8);
      stdout.write("Valor total a se pagar ficará $total reais\n");
      break;

      case 3:
      stdout.write(
        "Você pediu $litro litros de Diesel, cujo preço unitário é 5,90 reais por litro\n",
      );
      double total =  (litro * 5.9);
      stdout.write("Valor total a se pagar ficará $total reais\n");
      break;

      case 4:
      stdout.write(
        "Você pediu $litro litros de Álcool, cujo preço unitário é 4,20 reais por litro\n",
      );
      double total =  (litro * 4.2);
      stdout.write("Valor total a se pagar ficará $total reais\n");
      break;
  }
}
