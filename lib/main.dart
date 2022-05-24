import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questao-chamada.dart';
import 'package:projeto_perguntas/components/questao.dart';
import 'package:projeto_perguntas/components/questionario.dart';
import 'package:projeto_perguntas/components/resultado.dart';

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
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Amarelo', 'pontuacao': 2},
        {'texto': 'Preto', 'pontuacao': 7},
        {'texto': 'Verde', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 9},
        {'texto': 'Carneiro', 'pontuacao': 6},
        {'texto': 'Vaca', 'pontuacao': 4},
        {'texto': 'Burro', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Qual o seu cantor favorito?',
      'respostas': [
        {'texto': 'Pedro', 'pontuacao': 10},
        {'texto': 'Paulo', 'pontuacao': 9},
        {'texto': 'Timóteo', 'pontuacao': 8},
        {'texto': 'Bruno', 'pontuacao': 7},
      ],
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Perguntas'),
    //       ),
    //       body: temPerguntaSelecionada
    //           ? Column(
    //               children: [
    //                 QuestaoChamada(
    //                   texto:
    //                       _perguntas[_perguntaSelecionada]['texto'].toString(),
    //                 ),
    //                 ...widgets,
    //               ],
    //             )
    //           : Resutado()),
    // );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoClicado: _responder,
              )
            : Resutado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}
