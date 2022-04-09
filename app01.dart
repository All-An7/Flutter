import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Introdução"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.yellow,
          child: Center(
            child: Text(
              "Olá, meu nome é Allan e estou no 5º ciclo de ads, tenho formação em técnico de informática pela etec",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                //decoration: TextDecoration.overline,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
