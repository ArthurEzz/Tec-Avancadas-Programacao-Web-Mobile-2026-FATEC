import 'dart:io';


//1) Contagem regressiva
//Leia um número inteiro N e imprima os valores de N até 0 (inclusive).
void main(){
  stdout.write("Digite um número para fazer uma contagem regressiva\n");
 int numero = int.tryParse(stdin.readLineSync()!) ?? 0;

 if(numero == 0){
  stdout.write("Número inválido!");
  return;
 }
 for(int i = numero; i >= 0; i--){
  stdout.write("$i \n");
 }

}