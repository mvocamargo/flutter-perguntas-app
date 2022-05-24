import 'package:flutter/material.dart';

class Resutado extends StatelessWidget {
  const Resutado(this.pontuacao, this.resetaQuiz, {Key? key}) : super(key: key);

  final int pontuacao;
  final void Function() resetaQuiz;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Jedi!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado, style: TextStyle(fontSize: 30)),
        ),
        TextButton(
            onPressed: this.resetaQuiz,
            child: Text(
              'Reiniciar quiz...',
              style: TextStyle(
                fontSize: 18,
              ),
            ))
      ],
    );
  }
}
