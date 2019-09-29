import 'package:flutter/material.dart';

import './transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 'e1',
      amount: 25.61,
      title: 'Nova panela',
      date: DateTime.now(),
    ),
    Transaction(
      id: 'e2',
      amount: 21.31,
      title: 'Subway',
      date: DateTime.now(),
    ),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              /// se o tamanho for definido dentro do card
              /// não ha necessidade de por o card dentro de
              /// um container para o tamanho fazer efeito
              width: double.infinity,
              child: Card(
                child: Container(
                  /// para aumentar o tamanho de um card a duas
                  /// opções, uma de por o texto do card dentro
                  /// de um container e lá alterar seu tamanho
                  /// ou por o card dentro de um container e
                  /// alterar seu tamanho
                  //width: double.infinity, dentro do card
                  child: Text('Hello app'),
                ),
                color: Colors.red,
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((transaction) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        )),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'R\$ ${transaction.amount}',
                          //transaction.amount.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.purple),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transaction.title,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              transaction.date.toString(),
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
