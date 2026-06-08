import 'package:flutter/material.dart';

class tempApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conversor de Temperatura',
      home: tempPage(),
    );
  }
}

class tempPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return tempState();
  }
}

class tempState extends State<tempPage>{
  List <String> Temperaturas = ['Celsius para Fahrenheit', 'Fahrenheit para Celsius'];

  TextEditingController temperaturaController = TextEditingController();
  String? escolhido;
  String resultado = '';

  void Enviar(){
    setState(() {
    if (escolhido == 'Celsius para Fahrenheit'){
      double C = double.tryParse(temperaturaController.text) ?? 0;
      double F = (C * 9/5) + 32;

      resultado = 'Celsius para Fahrenheit é ${F.toStringAsFixed(2)}';
    }

    else if(escolhido == 'Fahrenheit para Celsius'){
      double F = double.tryParse(temperaturaController.text) ?? 0;
      double C = (F - 32) * 5/9;

      resultado = 'Fahrenheit para Celsius é ${C.toStringAsFixed(2)}';
    }

    else{
      resultado ='Escolha uma das opções';
    }
    });
  }

  

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsetsGeometry.all(50),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Digite uma temperatura',
                ),
                controller: temperaturaController,
              ),
            
            SizedBox(height: 30),

          DropdownButton<String>(
            value: escolhido,
            items: Temperaturas.map((graus){
              return DropdownMenuItem<String>(
                value: graus,
                child: Text(graus),
                );
            }
            ).toList(), 
            onChanged: (temp){
              setState(() {
                escolhido = temp!;
              });
            }
            ),

          SizedBox(height: 30,),

            ElevatedButton(
            onPressed: Enviar,
            child: Text('Enviar'),
          ),

          SizedBox(height: 20,),

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