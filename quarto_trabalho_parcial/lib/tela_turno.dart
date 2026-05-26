// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TurnoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Escolha de Turno',
      home: (TurnoPagina()),
    );
  }
}

class TurnoPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TurnoEstado();
  }
}

class TurnoEstado extends State<TurnoPagina> { 

  String opcao = 'Noite';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: Text('Escolha de Turno'),
      ),

        body: Padding(
          padding: 
           EdgeInsets.all(200),

        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do Aluno:',
              ),
            ),
          SizedBox(height: 50,),
          
          Text('Qual é o seu período?'),
          Row(
            children: [
          Text('Manhã'),
          Radio<String>(
            value: 'Manhã',
            groupValue: opcao,
            onChanged: (marcado) {
              setState(() {
                opcao = marcado!; 
              });
              
            },
          )
          ],
        ),

        Row(
            children: [
          Text('Tarde'),
          Radio<String>(
            value: 'Tarde',
            groupValue: opcao,
            onChanged: (marcado) {
              setState(() {
                opcao = marcado!; 
              });
              
            },
          )
          ],
        ),

        Row(
            children: [
          Text('Noite'),
          Radio<String>(
            value: 'Noite',
            groupValue: opcao,
            onChanged: (marcado) {
              setState(() {
                opcao = marcado!; 
              });
              
            },
          )
          ],
        ),

          ],
        ),

        )
      );
  }
 }