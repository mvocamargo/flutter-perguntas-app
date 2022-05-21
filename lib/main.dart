import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questao.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(texto: perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 01'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 02'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 03'),
            ),
          ],
        ),
      ),
    );
  }
}
