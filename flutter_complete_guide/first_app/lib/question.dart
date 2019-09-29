import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  ///
  /// Quando uma variavel não vai mudar no ciclo de vida de um objeto
  /// ela dever ser marcada como final
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // define tamanho como a infinidade da tela do dispositivo
      width: double.infinity,
      margin: EdgeInsets.all(32.0), // space between blocks
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        /// centraliza os elementos, se dentro de um elemento que tenha tamanho
        textAlign: TextAlign.center,
      ),
    );
  }
}
