import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import './text.dart';

class TextControl extends StatefulWidget {
  State<StatefulWidget> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _text = WordPair.random().asCamelCase;

  void changeText() {
    setState(() {
      _text = WordPair.random().asCamelCase;
    });
  }
  
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Alterar texto'),
          onPressed: changeText,
        ),
        TextOutput(
          text: _text,
        ),
      ],
    );
  }
}
