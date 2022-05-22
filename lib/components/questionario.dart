import 'package:flutter/material.dart';

import 'questao.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    Key? key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoClicado,
  }) : super(key: key);

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quandoClicado;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(
          questao: this.perguntas[this.perguntaSelecionada],
          quandoClicado: this.quandoClicado,
        )
      ],
    );
  }
}
