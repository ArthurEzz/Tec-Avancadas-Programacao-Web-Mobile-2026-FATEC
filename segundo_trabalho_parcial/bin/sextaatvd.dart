//Uma lanchonete está enfrentando dificuldades para atender certos pedidos
//devido a restrições em algumas combinações do cardápio. As regras são as seguintes:
//lanche Bauru não pode ser acompanhado de Guaraná.
//Se o cliente escolher X-Frango, não poderá pedir Água.
//Ao pedir Pizza, as únicas bebidas permitidas são Vinho ou Água.
//Com base nessas restrições, desenvolva um programa que leia o lanche e a bebida
// escolhidos pelo cliente e determine se o pedido pode ou não ser atendido.

import 'dart:io';

int lanchonete() {
  stdout.write("-- Comidas --\n");
  stdout.write("1 - Bauru\n");
  stdout.write("2 - X-Frango\n");
  stdout.write("3 - X-Tudo\n");
  stdout.write("4 - X-Bagunça\n");
  stdout.write("5 - Pizza de Calabresa\n");
  stdout.write("6 - Pizza de 4 Queijos\n");
  String? codigocomida = stdin.readLineSync();
  if (codigocomida == null) {
    stdout.write("Código inválido\n");
    exit(0);
  }
  int lanche = int.tryParse(codigocomida)!;
  if (lanche < 1 || lanche > 6) {
    stdout.write("Código inválido\n");
    exit(0);
  }
  return lanche;
}

int bebidas() {
  stdout.write("-- Bebidas --\n");
  stdout.write("1 - Guaraná\n");
  stdout.write("2 - Coca-Cola\n");
  stdout.write("3 - Água\n");
  stdout.write("4 - Vinho\n");
  String? codigobebida = stdin.readLineSync();
  if (codigobebida == null) {
    stdout.write("Código inválido\n");
    exit(0);
  }
  int bebida = int.tryParse(codigobebida)!;
  if (bebida < 1 || bebida > 4) {
    stdout.write("Código inválido\n");
    exit(0);
  }
  return bebida;
}

void main() {
  int comando = 0;
  do {
    stdout.write("\n== Sistema da Lanchonete ==\n");
    int comida = lanchonete();
    int bebida = bebidas();
    switch (comida) {
      case 1:
        if (bebida == 1) {
          stdout.write(
            "Você não pode pegar guaraná para acompanhar o seu X-Bauru\n",
          );
          continue;
        }
        stdout.write("Boa escolha! Tenha um bom apetite!\n");
        comando = 2;
        break;

        case 2:
        if (bebida == 3) {
          stdout.write(
            "Você não pode pegar água para acompanhar o seu X-Frango\n",
          );
          continue;
        }
        stdout.write("Boa escolha! Tenha um bom apetite!\n");
        comando = 2;
        break;

        case 3:
        stdout.write("Boa escolha! Tenha um bom apetite!\n");
        comando = 2;
        break;

        case 4:
        stdout.write("Boa escolha! Tenha um bom apetite!\n");
        comando = 2;
        break;
        
        case 5:
        if (bebida == 1 || bebida == 2){
          stdout.write(
            "Você só pode escolher água ou vinho para a sua pizza de calabresa\n",
          );
          continue;
        }
        stdout.write("Boa escolha! Tenha um bom apetite!\n");
        comando = 2;
        break;

        case 6:
        if (bebida == 1 || bebida == 2){
          stdout.write(
            "Você só pode escolher água ou vinho para a sua pizza 4 Queijos\n",
          );
          continue;
        }
        stdout.write("Boa escolha! Tenha um bom apetite!\n");
        comando = 2;
        break;
        
    }
  } while (comando != 2);
}
