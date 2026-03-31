//Desenvolva um programa que, a partir do preço e do código de origem de um produto,
// calcule e exiba o valor do desconto concedido. As regras de desconto são as seguintes:
//Código 1 – Região Norte: 5% de desconto.
//Código 2 – Região Sul: 15% de desconto.
//Código 3 – Região Sudeste: 7% de desconto.
//Código 4 – Região Nordeste: 12% de desconto.
//Código 5 – Região Centro-Oeste: 20% de desconto.
//Se o código informado não for válido, o produto será considerado importado, e nenhum desconto será aplicado.
// O programa deve ler o preço e o código de origem, calcular o desconto (se aplicável) e exibir o valor final do produto.
import 'dart:io';

void main() {
  stdout.write("\nQual é o preço do produto?\n");
  String? valor = stdin.readLineSync();
  if (valor == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double preco = double.tryParse(valor)!;
  stdout.write("Qual é o código de origem do produto?\n");
  stdout.write("1- Região Norte\n");
  stdout.write("2- Região Sul\n");
  stdout.write("3- Região Sudeste\n");
  stdout.write("4- Região Nordeste\n");
  stdout.write("5- Região Centro-Oeste\n");
  String? regiao = stdin.readLineSync();
  if (regiao == null) {
    stdout.write("Valor inválido!\n");
    return;
  }
  double origem = double.tryParse(regiao)!;

  if (origem < 1 || origem > 5) {
    stdout.write(
      "Você não recebeu desconto por ser produto estrangeiro, ou seja, ficará $preco Reais\n",
    );
  }

  switch (origem) {
    case 1:
      double conta = preco - (preco * 0.05);
      stdout.write(
        "Você recebeu 5% de desconto por ser produto do Norte, ou seja, ficará $conta Reais\n",
      );
      break;
    case 2:
      double conta = preco - (preco * 0.15);
      stdout.write(
        "Você recebeu 15% de desconto por ser produto do Sul, ou seja, ficará $conta Reais\n",
      );
      break;
    case 3:
      double conta = preco - (preco * 0.07);
      stdout.write(
        "Você recebeu 7% de desconto por ser produto do Sudeste, ou seja, ficará $conta Reais\n",
      );
      break;
    case 4:
      double conta = preco - (preco * 0.12);
      stdout.write(
        "Você recebeu 12% de desconto por ser produto do Nordeste, ou seja, ficará $conta Reais\n",
      );
      break;
    case 5:
      double conta = preco - (preco * 0.20);
      stdout.write(
        "Você recebeu 20% de desconto por ser produto do Centro-Oeste, ou seja, ficará $conta Reais\n",
      );
      break;
  }
}
