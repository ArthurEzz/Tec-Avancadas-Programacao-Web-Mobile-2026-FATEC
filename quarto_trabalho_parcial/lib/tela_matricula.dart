// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class matriculaApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de Matrícula Completa',
      home: (matriculaPagina()),
    );
  }
}

class matriculaPagina extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return matriculaEstado();
  }
}

class matriculaEstado extends State<matriculaPagina>{

  List<String> cursos = ['ADS', 'Ciências de Dados', 'Enfermagem'];

  String? cursoEscolhido;

  String turno = "Noite";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tela de Matrícula Completa'),
      ),

    body: Padding(
      padding: EdgeInsets.all(100),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Nome do Aluno:',
            ),
          ),

        SizedBox(height: 50,),

      TextField(
            decoration: InputDecoration(
              labelText: 'Idade:',
            ),
          ),

        SizedBox(height: 50,),

        TextField(
            decoration: InputDecoration(
              labelText: 'Nome do Responsável:',
            ),
          ),

        SizedBox(height: 50,),

        TextField(
            decoration: InputDecoration(
              labelText: 'Telefone:',
            ),
          ),

          SizedBox(height: 50,),

        Row(
          children: [
            Text('Manhã'),
            Radio<String>(
              value: 'manha',
              groupValue: turno,
              onChanged: (escolhido){
                setState(() {
                  turno = escolhido!;
                });
              },
            ),
          ],
        ),

        Row(
          children: [
            Text('Tarde'),
            Radio<String>(
              value: 'tarde',
              groupValue: turno,
              onChanged: (escolhido){
                setState(() {
                  turno = escolhido!;
                });
              },
            ),
          ],
        ),

        Row(
          children: [
            Text('Noite'),
            Radio<String>(
              value: 'Noite',
              groupValue: turno,
              onChanged: (escolhido){
                setState(() {
                  turno = escolhido!;
                });
              },
            ),
          ],
        ),
      
      SizedBox(height: 50,),

        DropdownButton(
          value: cursoEscolhido,
          items: cursos.map((curso){
            return DropdownMenuItem<String>(
              value: curso,
              child :Text(curso),
            );
          }).toList(),
           onChanged: (escolhido){
            setState(() {
              cursoEscolhido = escolhido!;
            });
           }  
           ),

          SizedBox(height: 50,),

           ElevatedButton(
            onPressed: (){
              print('Matrícula Feita com Sucesso!');
              },
            child: const Text('Entrar'),
            )
       
        ],
      ),
      ),

    );
  }
}