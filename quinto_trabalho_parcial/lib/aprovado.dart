import 'package:flutter/material.dart';

class aprovadoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notas de Alunos',
      debugShowCheckedModeBanner: false,
      home: aprovadoPage(),
    );
  }
}

class aprovadoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return aprovadoState();
  }
}

class aprovadoState extends State<aprovadoPage> {
  bool escolhido = false;

  TextEditingController umController = TextEditingController();
  TextEditingController doisController = TextEditingController();
  TextEditingController tresController = TextEditingController();
  TextEditingController recController = TextEditingController();
  String resultado = '';

  void Enviar() {
    double? umNota = double.tryParse(umController.text);
    double? doisNota = double.tryParse(doisController.text);
    double? tresNota = double.tryParse(tresController.text);
    double? recNota = double.tryParse(recController.text);

    setState(() {
      if (umNota == null || doisNota == null || tresNota == null) {
        resultado = 'Digite um número válido';
      } else {
        if (escolhido == false) {
          double media = (umNota + doisNota + tresNota) / 3;
          if (media >= 6) {
            resultado =
                'A média da sua nota é ${media.toStringAsFixed(1)}, você está aprovado!';
          } else {
            resultado =
                'A média da sua nota é ${media.toStringAsFixed(1)}, você está reprovado!';
          }
        } else {
          double media = (umNota + doisNota + tresNota) / 3;
          if (recNota == null) {
            resultado = 'Digite um número válido de recuperação';
          } else {
            double mediaFinal = (media + recNota) / 2;
            if (mediaFinal >= 6) {
              resultado =
                  'A média da sua nota é ${mediaFinal.toStringAsFixed(1)}, você está aprovado!';
            } else {
              resultado =
                  'A média da sua nota é ${mediaFinal.toStringAsFixed(1)}, você está reprovado!';
            }
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notas de Alunos'), centerTitle: true),

      body: Padding(
        padding: EdgeInsetsGeometry.all(50),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: '1° Nota:'),
              controller: umController,
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(labelText: '2° Nota:'),
              controller: doisController,
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(labelText: '3° Nota:'),
              controller: tresController,
            ),

            SizedBox(height: 30),

            Row(
              children: [
                Checkbox(
                  value: escolhido,
                  onChanged: (bool? valor) {
                    setState(() {
                      escolhido = valor ?? false;
                    });
                  },
                ),

                Text('Tem recuperação?'),
              ],
            ),

            ElevatedButton(
              onPressed: Enviar, 
              child: Text('Enviar')
              ),

            if (escolhido == true) ...[
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Qual foi a nota da sua recuperação?',
                ),
                controller: recController,
              ),
            ],

            SizedBox(height: 30),

            Text(
              resultado,
              style: TextStyle(fontSize: 16)
             ),
          ],
        ),
      ),
    );
  }
}
