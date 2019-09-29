import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> listOfQuestions;
  final Function choseAnswer;

  Quiz({
    @required this.questionIndex,
    @required this.listOfQuestions,
    @required this.choseAnswer,
  });

  List<Widget> _questionBuilder() {
    List<Widget> formatedQuestions = [
      Question(listOfQuestions[questionIndex]['question']),
    ];

    List<Map<String, Object>> questionList = listOfQuestions[questionIndex]['answer'];

    questionList.map((response) {
      // executa uma função em casa item de do array
      formatedQuestions.add(Answer(
        answerText: response['text'],
        /// Para mandar uma função com parametros como resposta
        /// podemos envolver uma função com parametros dentro de 
        /// uma função anônima
        answerHandle: () => choseAnswer(response['score']),
      ));
    }).toList(); // cria uma lista

    ///
    /// Como fazer isso com função forEach
    ///
    /// questionList.forEach((response) {
    ///  formatedQuestions.add(Answer(
    ///    answerText: response,
    ///    answerHandle: choseAnswer,
    ///  ));
    /// });

    /*for (var response in _listOfQuestions[_questionIndex]['answer']) {
      formatedQuestions.add(Answer(
        answerText: response,
        answerHandle: choseAnswer, // sem () para o dart não executar
      )

          ///  RaisedButton(
          ///  child: Text(response),
          /**
            * uma função pode ter outra função como valor, para passar uma função de modo
            * correto para outra são removidos os sinais () do final de uma função
            *
            * Ou seja
            *
            * ao invés de
            * onPressed: chosoeAnwser() <= isso irá causar erro de compilação
            *
            * o modo a obter resultado é
            * onPressed: choseAnswer
            * ou
            * onPressed: () => print('lindo')
            */
          ///  onPressed: choseAnswer,
          ///)
          );
    }*/

    return formatedQuestions;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _questionBuilder(),
    );
  }
}
