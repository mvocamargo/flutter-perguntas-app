import 'package:flutter/material.dart';

import 'questao-chamada.dart';
import 'questao-resposta.dart';

class Questao extends StatelessWidget {
  const Questao({
    Key? key,
    required this.questao,
    required this.quandoClicado,
  }) : super(key: key);

  final Map questao;
  final void Function() quandoClicado;

  @override
  Widget build(BuildContext context) {
    List<String> respostas = questao['respostas'];
    List<Widget> widgets =
        respostas.map((t) => QuestaoResposta(t, this.quandoClicado)).toList();
    return ListBody(
      children: [
        QuestaoChamada(
          texto: this.questao['texto'].toString(),
        ),
        ...widgets,
      ],
    );
  }
}
