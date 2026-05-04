import 'package:flutter/material.dart';

class OlaMundoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro Projeto Flutter',
      home: OlaMundoPage(),
    );
  }
}

class OlaMundoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return OlaMundoState();
  }
}

class OlaMundoDoisPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return OlaMundoDoisState();
  }
}

class OlaMundoState extends State<OlaMundoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Primeira Página'),
      ),
      body: Center(
        child: Text('Olá Mundo'),
      ),
    );
  }
}

class OlaMundoDoisState extends State<OlaMundoDoisPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
