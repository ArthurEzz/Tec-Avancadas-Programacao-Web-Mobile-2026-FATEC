import 'package:flutter/material.dart';

class AlunoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CadastroAluno',
      debugShowCheckedModeBanner: false,
      home: AlunoPage(),
    );
  }
}

class AlunoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AlunoState();
  }
}

class AlunoState extends State<AlunoPage>{
void dispose(){
  nomeController.dispose();
  idadeController.dispose();
  emailController.dispose();

  super.dispose();
}

TextEditingController nomeController = TextEditingController();
TextEditingController idadeController = TextEditingController();
TextEditingController emailController = TextEditingController();
String resultado = '';

void cadastrar(){
String idade = idadeController.text.trim();
String nome = nomeController.text.trim();
String email = emailController.text.trim();

if (nome.isEmpty) {
  setState(() {
    resultado = 'O campo Nome do Aluno é obrigatório';
  });
  return;
}

if (nome.length < 3 || nome.length > 50){
  setState(() {
    resultado = 'O nome do Aluno precisa ser entre 3 e 50 caracteres';
  });
  return;
}


if (idade.isEmpty) {
  setState(() {
    resultado = 'O campo idade é obrigatório';
  });
  return;
}

int? idadeInt = int.tryParse(idade);

if (idadeInt == null){
  setState(() {
    resultado = 'Digite um número inteiro válido!';
  });
  return;
}

if (idadeInt < 10 || idadeInt > 100){
  setState(() {
    resultado = 'A idade do Aluno deve ser entre 10 a 100';
  });
  return;
}

if (email.isEmpty) {
  setState(() {
    resultado = 'O campo email é obrigatório';
  });
  return;
}

if (!RegExp(r'@').hasMatch(email)) {
  setState(() {
    resultado = 'Deve conter o caractere @';
  });
  return;
}

 setState(() {
    resultado = 'Aluno salvo com sucesso';
  });
  

}



  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Alunos'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o nome do Aluno?',
                hintText: 'Nome do Aluno',
                border: OutlineInputBorder(),
              ),
              controller: nomeController,
            ),

            SizedBox(height: 30),

            TextField(
              controller: idadeController,
                decoration: InputDecoration(
                labelText: 'Qual é a idade do Aluno?',
                hintText: 'Idade do Aluno',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o e-mail do Aluno?',
                hintText: 'E-mail do Aluno',
                border: OutlineInputBorder(),
              ),
              controller: emailController,
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