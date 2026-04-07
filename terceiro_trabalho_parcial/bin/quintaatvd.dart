//5) Contar pares e ímpares
//Leia inteiros até que o usuário digite 0.
//Ao final, informe quantos números foram pares e quantos foram ímpares (não contar o 0).

import 'dart:io';

void main() {
  int numero = 1;
  int par = 0;
  int impar = 0;
  while (numero != 0) {
    stdout.write("Digite um número (para parar, digite 0)\n");
    numero = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (numero != 0) {
      if (numero % 2 == 0) {
        par++;
      } else {
        impar++;
      }
    }
  }
  stdout.write("Essa é a quantidade de impar e pares que você digitou:\n Impar:$impar\n Par:$par\n1");
}
