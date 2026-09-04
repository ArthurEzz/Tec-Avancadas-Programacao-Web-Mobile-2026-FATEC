import 'package:flutter/material.dart';

class EventoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CadastroEvento',
      debugShowCheckedModeBanner: false,
      home: EventoPage(),
    );
  }
}

class EventoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return EventoState();
  }
}

class EventoState extends State<EventoPage>{
void dispose(){
  eventoController.dispose();
  minimaController.dispose();
  maximaController.dispose();
  valorController.dispose();

  super.dispose();
}

TextEditingController eventoController = TextEditingController();
TextEditingController minimaController = TextEditingController();
TextEditingController maximaController = TextEditingController();
TextEditingController valorController = TextEditingController();
String resultado = '';

void cadastrar(){
String evento = eventoController.text.trim();
String minima = minimaController.text.trim();
String maxima = maximaController.text.trim();
String valor = valorController.text.trim();

if (evento.isEmpty) {
  setState(() {
    resultado = 'O campo Nome do Evento é obrigatório';
  });
  return;
}

if (evento.length < 5 || evento.length > 100){
  setState(() {
    resultado = 'O nome do Evento precisa ser entre 5 e 100 caracteres';
  });
  return;
}


if (minima.isEmpty) {
  setState(() {
    resultado = 'O campo Quantidade Mínima é obrigatório';
  });
  return;
}

int? minimaInt = int.tryParse(minima);
if(minimaInt == null){
  setState(() {
    resultado = 'Digite um número inteiro válido';
  });
  return;
}

if (minimaInt < 1){
  setState(() {
    resultado = 'A quantidade mínima é 1';
  });
  return;
}

if (maxima.isEmpty) {
  setState(() {
    resultado = 'O campo Quantidade Máxima é obrigatório';
  });
  return;
}

int? maximaInt = int.tryParse(maxima);
if(maximaInt == null){
  setState(() {
    resultado = 'Digite um número inteiro válido';
  });
  return;
}


if(maximaInt < minimaInt || maximaInt > 50000){
  setState(() {
    resultado = 'A Quantidade Máxima deve estar entre $minimaInt e 50.000';
  });
  return;
}

if (valor.isEmpty) {
  setState(() {
    resultado = 'O campo Valor é obrigatório';
  });
  return;
}

double? valorInt = double.tryParse(valor.replaceAll(',', '.'));
if (valorInt == null){
  setState(() {
    resultado = 'Digite um número inteiro válido';
  });
  return;
}


if (!RegExp(r'^\d+([,.]\d{1,2})?$').hasMatch(valor)) {
      setState(() {
        resultado = 'O valor deve ter no máximo duas casas decimais';
      });
      return;
    }

if(valorInt < 0 || valorInt > 10000){
  setState(() {
    resultado = 'O valor do ingresso deve estar entre 0,00 e 10.000,00 Reais';
  });
  return;
}

 setState(() {
    resultado = 'Evento salvo com sucesso';
  });
  

}

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Eventos'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o nome do Evento?',
                hintText: 'Nome do Evento',
                border: OutlineInputBorder(),
              ),
              controller: eventoController,
            ),

            SizedBox(height: 30),

            TextField(
              controller: minimaController,
                decoration: InputDecoration(
                labelText: 'Qual é a quantidade mínima de participantes?',
                hintText: 'Quantidade Mínima',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é a quantidade máxima de participantes?',
                hintText: 'Quantidade Máxima',
                border: OutlineInputBorder(),
              ),
              controller: maximaController,
            ),

          SizedBox(height: 30),

          TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o valor do ingresso?',
                hintText: 'Código do Livro',
                border: OutlineInputBorder(),
              ),
              controller: valorController,
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