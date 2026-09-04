import 'package:flutter/material.dart';

class UsuarioApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CadastroUsuario',
      debugShowCheckedModeBanner: false,
      home: UsuarioPage(),
    );
  }
}

class UsuarioPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return UsuarioState();
  }
}

class UsuarioState extends State<UsuarioPage>{
void dispose(){
  nomeController.dispose();
  emailController.dispose();
  senhaController.dispose();
  confirmarController.dispose();

  super.dispose();
}

TextEditingController nomeController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController senhaController = TextEditingController();
TextEditingController confirmarController = TextEditingController();
String resultado = '';

void cadastrar(){
String nome = nomeController.text.trim();
String email = emailController.text.trim();
String senha = senhaController.text.trim();
String confirmar = confirmarController.text.trim();

if (nome.isEmpty) {
  setState(() {
    resultado = 'O campo Nome é obrigatório';
  });
  return;
}

if (nome.length < 3 || nome.length > 50){
  setState(() {
    resultado = 'O seu nome ser entre 3 e 50 caracteres';
  });
  return;
}


if (email.isEmpty) {
  setState(() {
    resultado = 'O campo Email é obrigatório';
  });
  return;
}

if (!RegExp(r'@').hasMatch(email)) {
  setState(() {
    resultado = 'Deve conter o caractere @ no campo Email';
  });
  return;
}

if (!RegExp(r'^[^@]+@[^@]*\.[^@]*$').hasMatch(email)) {
  setState(() {
    resultado = 'Deve conter um . depois do @ no campo Email';
  });
  return;
}


if (senha.isEmpty) {
  setState(() {
    resultado = 'O campo Senha é obrigatório';
  });
  return;
}

if(senha.length < 6 || senha.length > 20){
  setState(() {
    resultado = 'O campo Senha deve possuir entre 6 a 20 caracteres';
  });
  return;
}

if (confirmar.isEmpty) {
  setState(() {
    resultado = 'O campo Confirmar Senha é obrigatório';
  });
  return;
}

if(confirmar != senha){
  setState(() {
    resultado = 'As senhas não se coincidem';
  });
  return;
}


 setState(() {
    resultado = 'Usuário cadastrado com sucesso';
  });
  

}

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuários'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o seu nome?',
                hintText: 'Nome',
                border: OutlineInputBorder(),
              ),
              controller: nomeController,
            ),

            SizedBox(height: 30),

            TextField(
              controller: emailController,
                decoration: InputDecoration(
                labelText: 'Qual é o seu e-mail?',
                hintText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: 'Digite uma senha para você',
                hintText: 'Senha',
                border: OutlineInputBorder(),
              ),
              controller: senhaController,
            ),

          SizedBox(height: 30),

          TextField(
              decoration: InputDecoration(
                labelText: 'Confirme sua senha',
                hintText: 'Senha',
                border: OutlineInputBorder(),
              ),
              controller: confirmarController,
            ),

        SizedBox(height: 30),

          Text(resultado),

          SizedBox(height: 30),

            ElevatedButton(
              onPressed: cadastrar,
             child: Text('Cadastrar')
             )
          ],
        ),
      ),
    );
  }
}