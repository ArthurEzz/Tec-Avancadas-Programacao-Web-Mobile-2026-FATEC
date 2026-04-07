// 6) Ler até a palavra “sair”
//Leia palavras (strings) repetidamente até o usuário digitar sair.
//Ao final, mostre quantas palavras foram digitadas (não contar sair).

import 'dart:io';

void main() {
  String palavra = "";
  int numero = 0;

  while (palavra.toLowerCase() != "sair") {
    stdout.write("Digite palavras (Digite Sair para sair do programa)\n");
    palavra = stdin.readLineSync()!;
    if (palavra.toLowerCase() != "sair") {
      numero++;
    }
  }
  stdout.write("Você digitou $numero palavras\n\n");
}
