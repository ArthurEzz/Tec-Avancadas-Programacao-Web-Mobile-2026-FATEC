//9) Confirmar ação
//Pergunte ao usuário: “Deseja continuar? (s/n)”.
//Leia a resposta e trate as opções informadas.

import 'dart:io';

void main() {
  String resposta = "";
  do {
    stdout.write("Deseja continuar? (s/n)\n");
  Sresposta = stdin.readLineSync()!;

    if (resposta.toLowerCase() == "s") {
      stdout.write("Continuando...\n\n");
    } else {
      stdout.write("Digite uma das opções: (s/n)\n\n");
    }
  } while (resposta.toLowerCase() != "n");
  stdout.write("Programa encerrando...\n");
}
