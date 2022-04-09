import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  TextEditingController n3Controller = TextEditingController();

  String infoResultado = "Informe os números!";

  void _calcularSoma() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 / n2;

      if (resultado < 0.7) {
        infoResultado = 'Alcool é melhor: $resultado';
      } else
        infoResultado = 'Gasolina é melhor: $resultado';
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
      title: Text("Alcool ou gasolina",
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
          _campo("Preço do Alcool", n1Controller),
          _campo("Preço da gasolina", n2Controller),
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
          child: Text("verificar",
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

  _imagem() {
    return Center(
      child: Image.network(
        'https://w7.pngwing.com/pngs/526/413/png-transparent-black-fuel-pump-logo-computer-icons-gasoline-filling-station-fuel-free-icon-petroleum-miscellaneous-text-rectangle.png',
        height: 90,
        width: 90,
      ),
    );
  }
}
