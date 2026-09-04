import 'package:flutter/material.dart';

class filmesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CadastroFilmes',
      debugShowCheckedModeBanner: false,
      home: filmesPage(),
    );
  }
}

class filmesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return filmesState();
  }
}

class filmesState extends State<filmesPage>{
void dispose(){
  nomeController.dispose();
  dataController.dispose();
  duracaoController.dispose();

  super.dispose();
}

TextEditingController nomeController = TextEditingController();
TextEditingController dataController = TextEditingController();
TextEditingController duracaoController = TextEditingController();
String resultado = '';

void cadastrar(){
String data = dataController.text.trim();
String nome = nomeController.text.trim();
String duracao = duracaoController.text.trim();

if (nome.isEmpty) {
  setState(() {
    resultado = 'O campo Nome do Filme é obrigatório';
  });
  return;
}

if (nome.length < 2 || nome.length > 100){
  setState(() {
    resultado = 'O nome do filme precisa ser entre 2 e 100 caracteres';
  });
  return;
}

if (data.isEmpty) {
  setState(() {
    resultado = 'O campo Data de lançamento é obrigatório';
  });
  return;
}

if (!RegExp(r'^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/(19\d{2}|20(0\d|1\d|2[0-6]))$').hasMatch(data)) {
  setState(() {
    resultado = 'A data deve estar no formato dd/mm/aaaa';
  });
  return;
}

if (duracao.isEmpty) {
  setState(() {
    resultado = 'O campo duração é obrigatório';
  });
  return;
}

int? duracaoInt = int.tryParse(duracao);

if (duracaoInt == null){
  setState(() {
    resultado = 'Digite um número inteiro válido!';
  });
  return;
}

if (duracaoInt < 1 || duracaoInt > 500){
  setState(() {
    resultado = 'A duração do filme deve ser entre 1 a 500';
  });
  return;
}

 setState(() {
    resultado = 'Filme salvo com sucesso';
  });
  

}



  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Filmes'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o nome do filme?',
                hintText: 'Nome do Filme',
                border: OutlineInputBorder(),
              ),
              controller: nomeController,
            ),

            SizedBox(height: 30),

            TextField(
              controller: dataController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                labelText: 'Data',
                hintText: 'DD/MM/AAAA',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é a duração do filme?',
                hintText: 'Duração',
                border: OutlineInputBorder(),
              ),
              controller: duracaoController,
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