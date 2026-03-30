import 'dart:io';

//Em uma competição de natação, os nadadores são premiados com base na distância máxima percorrida.
// A premiação segue as seguintes regras:
//Se a distância for menor que 800 metros, o nadador recebe R$ 5.000,00.
//Se a distância estiver entre 800 e 1500 metros (inclusive 800 e 1500), o prêmio é de R$ 10.000,00.
//Para distâncias superiores a 1500 metros, o nadador recebe R$ 15.000,00.

void main() {
  stdout.write("Qual a distâcia?\n");
  String? valor = stdin.readLineSync();

  if (valor == null || valor.isEmpty) {
    stdout.write("O campo da distância é obrigatório!\n");
    return;
  }
  double? distancia = double.tryParse(valor) ?? 0;
  double premio;

  if (distancia < 800) {
    premio = 5000;
  } else if (distancia >= 800 && distancia < 1500) {
    premio = 10000;
  } else {
    premio = 15000;
  }

  stdout.write("O seu prêmio é $premio\n");
}
