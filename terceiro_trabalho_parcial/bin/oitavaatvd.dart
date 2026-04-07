//8) Validação de entrada (nota)
//Solicite ao usuário uma nota entre 0 e 10.
//Enquanto a nota informada estiver fora do intervalo, solicite novamente. Ao final, exiba a nota válida.

import 'dart:io';

void main() {
  int numero;
  do {
    stdout.write("Digite um número entre 0 a 10\n");
    numero = int.tryParse(stdin.readLineSync()!) ?? 0;
  } while (numero < 1 || numero > 9);
  stdout.write("Programa encerrando...");
}
