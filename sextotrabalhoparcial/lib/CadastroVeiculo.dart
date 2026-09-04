import 'package:flutter/material.dart';

class veiculoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CadastroVeiculo',
      home: veiculoPage(),
    );
  }
}

class veiculoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return veiculoState();
  }
}

class veiculoState extends State<veiculoPage>{
  TextEditingController marcaController = TextEditingController();
  TextEditingController modeloController = TextEditingController();
  TextEditingController anoController = TextEditingController();
  TextEditingController precoController = TextEditingController();
  String resultado = '';

void dispose(){
  marcaController.dispose();
  modeloController.dispose();
  anoController.dispose();
  precoController.dispose();

  super.dispose();
}


void cadastrar(){
  String marca = marcaController.text.trim();
  String modelo = modeloController.text.trim();
  String ano = anoController.text.trim();
  String preco = precoController.text.trim();

if(marca.isEmpty){
  setState(() {
    resultado = 'O campo Marca é obrigatório';
  });
  return;
}

if(marca.length < 2 || marca.length > 50){
  setState(() {
    resultado = 'O campo Marca deve ter entre 2 a 50 caracteres';
  });
  return;
  }

if(modelo.isEmpty){
  setState(() {
    resultado = 'O campo Modelo é obrigatório';
  });
  return;
}

if(modelo.length < 2 || modelo.length > 50){
  setState(() {
    resultado = 'O campo Modelo deve ter entre 2 a 50 caracteres';
  });
  return;
  }

  if(ano.isEmpty){
  setState(() {
    resultado = 'O campo Ano é obrigatório';
  });
  return;
}

int? anoInteiro = int.tryParse(ano);
if(anoInteiro == null){
  setState(() {
    resultado = 'Preencha o campo Ano com um número inteiro';
  });
  return;
}


if(anoInteiro < 1900 || anoInteiro > 2026){
  setState(() {
    resultado = 'O Ano deve estar entre 1900 e 2026';
  });
  return;
}


if(preco.isEmpty){
  setState(() {
    resultado = 'O campo preço é obrigatório';
  });
  return;
}

if (!RegExp(r'^\d+([,.]\d{1,2})?$').hasMatch(preco)) {
      setState(() {
        resultado = 'O preço deve ter no máximo duas casas decimais';
      });
      return;
    }


double? precoDouble = double.tryParse(preco.replaceAll(',', '.'));
if(precoDouble == null){
  setState(() {
    resultado = 'Digite um preço válido';
  });
  return;
}

if(precoDouble < 1000 || precoDouble > 1000000){
  setState(() {
    resultado = 'O campo só aceita valores entre 1000,00 e 1.000.000,00';
  });
  return;
}



  setState(() {
    resultado = 'Veículo salvo com sucesso';
  });
  


}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Veiculos'),
        centerTitle: true,
      ),
    body: Padding(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [


          
          TextField(
            decoration: InputDecoration(
              labelText: 'Qual é a marca do seu veículo?',
              hintText: 'Marca',
              border: OutlineInputBorder(),
            ),
            controller: marcaController,
          ),

        SizedBox(height: 30),

       
          TextField(
            decoration: InputDecoration(
              labelText: 'Qual é o modelo do seu veículo?',
              hintText: 'Modelo',
              border: OutlineInputBorder(),
            ),
            controller: modeloController,
          ),

          SizedBox(height: 30),


          
          TextField(
            decoration: InputDecoration(
              labelText: 'Qual é o ano do seu veículo?',
              hintText: 'Modelo',
              border: OutlineInputBorder(),
            ),
            controller: anoController,
          ),

          SizedBox(height: 30),

          
          TextField(
            decoration: InputDecoration(
              labelText: 'Qual é o preço do seu veículo?',
              hintText: 'Preço',
              border: OutlineInputBorder(),
            ),
            controller: precoController,
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: cadastrar,
             child: Text('Cadastrar')
             ),

            SizedBox(height: 20),

             Text(resultado),



          

        ],
      ),
    ),
    );
  }
}