import 'package:flutter/material.dart';

class selecaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Seleção de Curso',
      home: (selecaoPagina()),
    ); 
  }
}

class selecaoPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return selecaoEstado();
  }
}

class selecaoEstado extends State<selecaoPagina>{
  List <String> cursos = ['Informática','Administração','Eletrônica'];

  String? cursoEscolhido;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text('Seleção do Curso'),
       ),

       body: Padding(
        padding: EdgeInsets.all(100),

        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome:',
              ),
            ),

          SizedBox(height: 50,),

          DropdownButton<String>(
            value: cursoEscolhido,
            items: cursos.map((curso){
              return DropdownMenuItem<String>(
                value: curso,
                child: Text(curso),
                );
            }).toList(),
           onChanged: (escolhido){
            setState(() {
              cursoEscolhido = escolhido!;
            });
           }
           ),

          ],
        ),
       ),
    );
  }
}