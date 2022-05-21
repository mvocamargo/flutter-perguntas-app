import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questao.dart';

import 'components/questao-resposta.dart';

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
  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': ['Azul', 'Amarelo', 'Preto', 'Verde'],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': ['Coelho', 'Carneiro', 'Vaca', 'Burro'],
    },
    {
      'texto': 'Qual o seu cantor favorito?',
      'respostas': ['Pedro', 'Paulo', 'Timóteo', 'Bruno'],
    }
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];
    List<Widget> widgets =
        respostas.map((t) => QuestaoResposta(t, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(
                    texto: _perguntas[_perguntaSelecionada]['texto'].toString(),
                  ),
                  ...widgets,
                ],
              )
            : null,
      ),
    );
  }
}
