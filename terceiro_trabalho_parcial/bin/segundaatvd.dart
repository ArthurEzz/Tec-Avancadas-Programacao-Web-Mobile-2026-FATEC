import 'dart:io';

//2) Somatório de 1 a N
//Leia um inteiro N e calcule a soma de 1 até N usando um laço for. Ao final, mostre o resultado.

void main() {
  stdout.write("Digite um número\n");
  int numero = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (numero == 0) {
    stdout.write("Número inválido!\n");
    return;
  }
  for (int i = 0; i <= numero; i++) {
    stdout.write("$i\n");
  }
}
