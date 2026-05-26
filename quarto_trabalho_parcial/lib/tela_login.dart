import 'package:flutter/material.dart';
class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Tela de Login ',
    home: (LoginPagina()),
    );
  }
}

class LoginPagina extends StatefulWidget {
 @override
  State<StatefulWidget> createState() {
    return LoginEstado();
  }
}

class LoginEstado extends State<LoginPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('Tela de Login'),
        ),
        
        body: Padding(
          padding: EdgeInsets.all(100),
          
          child: Column (
         children: [

          TextField(
            decoration: InputDecoration( 
              labelText: 'E-mail:',
            )
          ),

          SizedBox(height: 50,),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
               labelText: 'Senha:',
              
               ),

          ),

        ElevatedButton( 
          onPressed: ()
          {
            print('Login Efetuado!');
          },
           child: const Text('Entrar'),
          ),//Botão "principal"

         ],
          ),
        ),
    );
  }
}