import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta');
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
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 01'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Respota 2 selected');
              },
              child: Text('Resposta 02'),
            ),
            ElevatedButton(
              onPressed: () => print('Resposta 3!!!'),
              child: Text('Resposta 03'),
            ),
          ],
        ),
      ),
    );
  }
}
