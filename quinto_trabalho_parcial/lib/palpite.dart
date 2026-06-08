import 'package:flutter/material.dart';
import 'dart:math';

class palpiteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: palpitePage(),
      debugShowCheckedModeBanner: false,
      title: 'Palpites',
    );
  }
}

class palpitePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return palpiteState();
  }
}

class palpiteState extends State<palpitePage> {
int palpite = Random().nextInt(100) + 1;
TextEditingController palpiteController = TextEditingController();
String resultado = '';
String tentativas = '';
int tentativas2 = 0;

void Enviar(){
int? palpite2 = int.tryParse(palpiteController.text);


setState(() {
  if(palpite2 == null) {
    resultado = 'Digite um palpite válido';
  }
  else {
    if(palpite2 == palpite) {
      resultado = 'Você acertou! O palpite era $palpite mesmo!';
      tentativas2++;
      tentativas = 'Você acertou com $tentativas2 tentativas!';
       
    }
    else if(palpite2 > palpite) {
      tentativas2++;
      resultado = 'Quase! Tente um número menor';
    }
    else if(palpite2 < palpite) {
      tentativas2++;
      resultado = 'Quase! Tente um número maior';
    }
  }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Palpites'),
      ),

      body: Padding(
        padding: 
          EdgeInsetsGeometry.all(200),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(labelText: 'Qual é o seu palpite?'),
              controller: palpiteController,
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: Enviar,
                child: Text('Enviar')
              ),
              
              SizedBox(height: 20),

              Text(
                resultado,
                style: TextStyle(fontSize: 16),
                ),

                Text(
                tentativas,
                style: TextStyle(fontSize: 16),
                )
            ],
          ),
      ),
    );
  }
}