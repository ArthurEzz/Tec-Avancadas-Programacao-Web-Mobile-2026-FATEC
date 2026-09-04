import 'package:flutter/material.dart';

class LivroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CadastroLivro',
      debugShowCheckedModeBanner: false,
      home: LivroPage(),
    );
  }
}

class LivroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LivroState();
  }
}

class LivroState extends State<LivroPage>{
void dispose(){
  tituloController.dispose();
  autorController.dispose();
  pagesController.dispose();
  codigoController.dispose();

  super.dispose();
}

TextEditingController tituloController = TextEditingController();
TextEditingController autorController = TextEditingController();
TextEditingController pagesController = TextEditingController();
TextEditingController codigoController = TextEditingController();
String resultado = '';

void cadastrar(){
String titulo = tituloController.text.trim();
String autor = autorController.text.trim();
String paginas = pagesController.text.trim();
String codigo = codigoController.text.trim();

if (titulo.isEmpty) {
  setState(() {
    resultado = 'O campo Título do livro é obrigatório';
  });
  return;
}

if (titulo.length < 2 || titulo.length > 100){
  setState(() {
    resultado = 'O Título do livro precisa ser entre 2 e 100 caracteres';
  });
  return;
}


if (autor.isEmpty) {
  setState(() {
    resultado = 'O nome do Autor é obrigatório';
  });
  return;
}



if (autor.length < 3 || autor.length > 100){
  setState(() {
    resultado = 'O nome do Autor deve ser entre 3 a 100 caracteres';
  });
  return;
}

if (paginas.isEmpty) {
  setState(() {
    resultado = 'O campo Número de Páginas é obrigatório';
  });
  return;
}

int? paginasInt = int.tryParse(paginas);
if (paginasInt == null){
  setState(() {
    resultado = 'Digite um número inteiro válido';
  });
  return;
}

if (paginasInt < 1 || paginasInt >10000){
  setState(() {
   resultado = 'O número de páginas deve conter entre 1 a 10.000 páginas'; 
  });
  return;
}


if (codigo.isEmpty) {
  setState(() {
    resultado = 'O campo Código do Livro é obrigatório';
  });
  return;
}


if (!RegExp(r'^[A-Za-z]{3}-\d{4}$').hasMatch(codigo)) {
  setState(() {
    resultado = 'O código do livro deve seguir o seguinte formato: ABC-1234';
  });
  return;
}

 setState(() {
    resultado = 'Livro salvo com sucesso';
  });
  

}

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Livros'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o Título do Livro?',
                hintText: 'Título do Livro',
                border: OutlineInputBorder(),
              ),
              controller: tituloController,
            ),

            SizedBox(height: 30),

            TextField(
              controller: autorController,
                decoration: InputDecoration(
                labelText: 'Qual é o nome do Autor?',
                hintText: 'Nome do Autor',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o número de páginas?',
                hintText: 'Numero de Páginas',
                border: OutlineInputBorder(),
              ),
              controller: pagesController,
            ),

          SizedBox(height: 30),

          TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o código do livro?',
                hintText: 'Código do Livro',
                border: OutlineInputBorder(),
              ),
              controller: codigoController,
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