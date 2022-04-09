import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  TextEditingController n3Controller = TextEditingController();

  String infoResultado = "";

  void _calcularSoma() {
    setState(() {
      int r;
      r = new Random().nextInt(10);

      infoResultado = r.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Jogo de número aleatório",
          style: TextStyle(color: Colors.black, fontSize: 20.0)),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _imagem(),
          _mensagem(),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSoma,
          child: Text("descobrir",
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
          color: Colors.green,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }

  _mensagem() {
    return Text(
      'escolha um número de 0 a 10',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }

  _imagem() {
    return Center(
      child: Image.network(
        'https://th.bing.com/th/id/R.ece1605316698a0804b84683d28aa311?rik=VgjShHcnG%2bD13w&riu=http%3a%2f%2ficon-icons.com%2ficons2%2f38%2fPNG%2f512%2fhelp_question_4509.png&ehk=AeR2IKIwwxMcq1PSdRVGaoz29In%2brz%2bZMsPgYe4k1rY%3d&risl=&pid=ImgRaw&r=0',
        height: 120,
        width: 120,
      ),
    );
  }
}
