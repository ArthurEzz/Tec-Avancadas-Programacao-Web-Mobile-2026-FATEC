import 'package:flutter/material.dart';

class PreferenciaApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Preferencia',
      home: (PrefereciaPagina()),
    );
  }
}

class PrefereciaPagina extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PreferenciaEstado();
  }

}

class PreferenciaEstado extends State<PrefereciaPagina>{

List<bool> selecionados = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Preferências"),
      ),


    body: Padding(
      padding: EdgeInsets.all(200),

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
        Text('Aceito receber novidades'),
          Checkbox(
            value: selecionados[0],
            onChanged:  (bool? marcado){
              setState(() {
                selecionados[0] = marcado!;
              });
            }
           ),
      ]
  ),

    Row(
      children: [
        Text('Concordo com os termos'),
          Checkbox(
            value: selecionados[1],
            onChanged:  (bool? marcado){
              setState(() {
                selecionados[1] = marcado!;
              });
            }
           ),
      ]
    )
        ],
        
      ),
    ),
    );
  }
}