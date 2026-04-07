//Exercícios usando do..while
//7) Menu de operações
//Exiba um menu com as opções:
//1 – Somar
//2 – Subtrair
//0 – Sair
//O programa deve continuar exibindo o menu e lendo a opção do usuário até que ele escolha 0.

import 'dart:io';

void main() {
  int numero = 4;
  do {
    stdout.write("== Menu com opções: ==\n");
    stdout.write("1 - Somar\n");
    stdout.write("2 - Subtrair\n");
    stdout.write("0 - Sair\n");
    numero = int.tryParse(stdin.readLineSync()!) ?? 4;
  } while (numero != 0);
  stdout.write("Programa encerrando...\n");
}
