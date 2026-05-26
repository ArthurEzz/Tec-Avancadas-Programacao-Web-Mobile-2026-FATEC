import 'package:flutter/material.dart';

class configApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de Configuração',
      home: (configPagina()),
    );
  }
}

class configPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return configEstado();
  }
}

class configEstado extends State<configPagina> {

    List<bool> marcado = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Configurações'),
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
          Row(
            children: [
            Switch(
              value: marcado[0],
             onChanged: (valor){
              setState(() {
                marcado[0] = valor!;
              });
             }
             ),
             Text('Receber Notificações'),
            ],
          ),

          Row(
            children: [
            Switch(
              value: marcado[1],
             onChanged: (valor){
              setState(() {
                marcado[1] = valor!;
              });
             }
             ),
             Text('Modo Escuro'),
            ],
          ),

          ],
        ),
        ),
    );
  }
}