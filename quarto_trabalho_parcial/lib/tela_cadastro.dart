import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cadastroApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Cadastro',
      home: (cadastroPagina()),
    );
  }
}

class cadastroPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return cadastroEstado();
  }
}

class cadastroEstado extends State<cadastroPagina>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cadastro'),
      ),

    body: Padding(
      padding: EdgeInsets.all(250),

        child: Column(
          children: [
        TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Nome:',
              ),
            ),

          SizedBox(height: 30),

          TextField(
              decoration: InputDecoration(
                labelText: 'Idade:',
              ),
            ),

          SizedBox(height: 30),

          TextField(
              decoration: InputDecoration(
                labelText: 'E-mail:',
              ),
            ),

          SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
            print("Cadastro Efetuado Com Sucesso!");
            
          }, child: const Text('Cadastrar')),

          SizedBox(height: 30),

          TextButton(onPressed: (){},
           child: const Text('Cancelar'))


          ],

        )
        


          ],
        ),
     )

    );
  }
}