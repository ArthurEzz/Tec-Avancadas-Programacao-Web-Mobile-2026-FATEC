import 'dart:io';

//3) Contar múltiplos
//Leia dois inteiros N e k. Conte quantos números no intervalo 1..N (inclusive) são múltiplos de k e exiba a quantidade.
void main() {
  stdout.write("Digite um número\n");
  int numero = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (numero == 0) {
    stdout.write("Número inválido!\n");
    return;
  }

  stdout.write("Digite um número maior que o primeiro\n");
  int numero2 = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (numero2 == 0) {
    stdout.write("Número inválido!\n");
    return;
  }

  for (int i = numero; i <= numero2; i++) {
    if (numero2 % i == 0) {
      stdout.write("$i\n");
    }
  }
}
