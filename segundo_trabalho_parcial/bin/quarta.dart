//Desenvolva um programa que solicite o nome de um estado brasileiro e informe sua respectiva região:
//Norte: Acre, Amapá, Amazonas, Pará, Rondônia, Roraima, Tocantins
//Nordeste: Alagoas, Bahia, Ceará, Maranhão, Paraíba, Pernambuco, Piauí, Rio Grande do Norte, Sergipe
//Centro-Oeste: Goiás, Mato Grosso, Mato Grosso do Sul, Distrito Federal
//Sudeste: Espírito Santo, Minas Gerais, Rio de Janeiro, São Paulo
//Sul: Paraná, Rio Grande do Sul, Santa Catarina
//Se o estado informado não constar na lista, exiba: "Estado não reconhecido."
import 'dart:io';

void main() {
  List<String> Norte = [
    "Acre",
    "Amapá",
    "Amazonas",
    "Pará",
    "Rondônia",
    "Roraima",
    "Tocantins",
  ];
  List<String> Nordeste = [
    "Alagoas",
    "Bahia",
    "Ceará",
    "Maranhão",
    "Paraíba",
    "Pernambuco",
    "Piauí",
    "Rio Grande do Norte",
    "Sergipe",
  ];
  List<String> CentroOeste = [
    "Goiás",
    "Mato Grosso",
    "Mato Grosso do Sul",
    "Distrito Federal",
  ];
  List<String> Sudeste = [
    "Espírito Santo",
    "Minas Gerais",
    "Rio de Janeiro",
    "São Paulo",
  ];
  List<String> Sul = ["Paraná", "Rio Grande do Sul", "Santa Catarina"];

  stdout.write("\nQual estado você mora?\n");
  String? estado = stdin.readLineSync();
  if (!Norte.contains(estado) &&
    !Nordeste.contains(estado) &&
    !CentroOeste.contains(estado) &&
    !Sudeste.contains(estado) &&
    !Sul.contains(estado)) {
    stdout.write("Estado não reconhecido, ou nome escrito errado!\n");
    return;
  }
  if (Norte.contains(estado)) {
    stdout.write("A região do seu estado é Norte.\n");
  }
  else if(Nordeste.contains(estado)){
    stdout.write("A região do seu estado é Nordeste.\n");
  }
  else if(CentroOeste.contains(estado)){
    stdout.write("A região do seu estado é Centro-Oeste.\n");
  }
  else if(Sudeste.contains(estado)){
    stdout.write("A região do seu estado é Sudeste.\n");
  }
  else if(Sul.contains(estado)){
    stdout.write("A região do seu estado é Sul.\n");
  }
}
