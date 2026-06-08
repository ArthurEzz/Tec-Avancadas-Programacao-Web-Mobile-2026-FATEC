import 'package:flutter/material.dart';

class imcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppIMC',
      home: imcPage(),
    );
  }
}

class imcPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return imcState();
  }
}

class imcState extends State<imcPage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resultado = '';

  void imc() {
    double altura = double.tryParse(alturaController.text) ?? 0;
    double peso = double.tryParse(pesoController.text) ?? 0;

    setState(() {
      if (altura <= 0 || peso <= 0) {
        resultado = 'Informe peso e altura válidos.';
        return;
      }

      double imc = peso / (altura * altura);

      if (imc < 18.5) {
        resultado = 'Você tem ${imc.toStringAsFixed(2)}, assim sendo classificado como Abaixo do Peso';
      } else if (imc <= 24.9) {
        resultado = 'Você tem ${imc.toStringAsFixed(2)}, assim sendo classificado como Normal';
      } else if (imc <= 29.9) {
        resultado = 'Você tem ${imc.toStringAsFixed(2)}, assim sendo classificado como Sobrepeso';
      } else {
        resultado = 'Você tem ${imc.toStringAsFixed(2)}, assim sendo classificado como Obesidade';
      }
  });                                                                                          
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fazendo IMC'),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [

            
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o seu peso?',
              ),
              controller: pesoController,
            ),


            SizedBox(height: 30),


            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é a sua altura?',
              ),
              controller: alturaController,
            ),


            SizedBox(height: 30),


            ElevatedButton(
              onPressed: imc,
              child: Text('Enviar'),
            ),


            SizedBox(height: 30),


            Text(
              resultado,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
