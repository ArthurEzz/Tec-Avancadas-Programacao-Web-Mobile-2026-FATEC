import 'dart:io';

//Exercícios usando while
//4) Soma até zero
//Leia números inteiros repetidamente até que o usuário digite 0.
//Ao final, mostre:
//a soma dos números digitados
//a quantidade de números digitados (não contar o 0)
void main() {
  int numero = 1;
  int somatoria = 0;
  while (numero != 0) {
    stdout.write("Digite um número (digite 0 para parar):\n");
    numero = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (numero != 0) {
      somatoria = (numero + somatoria);
    }
  }
  stdout.write(
    "Esta é a soma de todos os números que você digitou: $somatoria\n",
  );
}
