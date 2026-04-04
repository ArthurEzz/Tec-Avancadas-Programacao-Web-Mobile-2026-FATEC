//Uma lanchonete oferece o seguinte cardápio:
//Lanche Código Valor (R$)
// Cachorro Quente 101 14,20
//Bauru Simples 102 12,30
//Bauru com Ovo 103 13,50
//Hambúrguer 104 10,20
//Cheeseburger 105 15,30
//Refrigerante 106 10,00
//Desenvolva um programa que leia o código do item pedido e a quantidade desejada.
// O programa deve calcular e exibir o valor total a ser pago pelo cliente.
// Caso seja informado um código que não esteja na lista, o sistema deve exibir a mensagem "Código do lanche inválido".

import 'dart:io';

void main() {
  double preco;
  stdout.write("\n== Lanchonete do Marcelo ==\n");
  stdout.write("101 - Cachorro Quente 14,20 Reais\n");
  stdout.write("102 - Bauru Simples 12,30 Reais\n");
  stdout.write("103 - Bauru com Ovo 13,50 Reais\n");
  stdout.write("104 - Hambúrguer 10,20 Reais\n");
  stdout.write("105 - Cheeseburger 15,30 Reais\n");
  stdout.write("106 - Refrigerante 10,00 Reais\n");
  stdout.write("Para escolher algo no cardápio, basta digitar o código dele:\n");
  String? codigo = stdin.readLineSync();
  if (codigo == null) {
    stdout.write("Código inválido\n");
    return;
  }
  double codigos = double.tryParse(codigo)!;
  stdout.write('Quantos você vai querer?\n');
  String? quantos = stdin.readLineSync();
  if (quantos == null) {
    stdout.write("Quantide inválido\n");
    return;
  }
  double quantidade = double.tryParse(quantos)!;

  switch (codigos) {
    case 101:
      preco = quantidade * 14.20;
      stdout.write('Você precisará pagar $preco Reais por isso.\n');
      break;
    case 102:
      preco = quantidade * 12.30;
      stdout.write('Você precisará pagar $preco Reais por isso.\n');
      break;
    case 103:
      preco = quantidade * 13.50;
      stdout.write('Você precisará pagar $preco Reais por isso.\n');
      break;
    case 104:
      preco = quantidade * 10.20;
      stdout.write('Você precisará pagar $preco Reais por isso.\n');
      break;
    case 105:
      preco = quantidade * 15.30;
      stdout.write('Você precisará pagar $preco Reais por isso.\n');
      break;
    case 106:
      preco = quantidade * 10.00;
      stdout.write('Você precisará pagar $preco Reais por isso.\n');
      break;
  }
}
