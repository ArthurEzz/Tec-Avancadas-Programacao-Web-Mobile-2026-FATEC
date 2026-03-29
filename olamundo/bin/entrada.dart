import 'dart:io';

void main() {
  stdout.write("Qual o seu nome? ");
  String? n = stdin.readLineSync();

  stdout.write('Boa tarde $n');
}
