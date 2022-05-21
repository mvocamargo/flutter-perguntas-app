import 'dart:ui';

import 'package:flutter/material.dart';

class QuestaoResposta extends StatelessWidget {
  final String texto;
  final void Function() quandoClicado;

  const QuestaoResposta(this.texto, this.quandoClicado, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.blue,
            )),
        onPressed: quandoClicado,
        child: Text(texto),
      ),
    );
  }
}
