import 'package:flutter/material.dart';

import './textControl.dart';
/// 1) Create a new Flutter App (in this project)
///    and output an AppBar and some text below it
/// 2) Add a button which changes the text
///    (to any other text of your choice)
/// 3) Split the app into three widgets: App, TextControl & Text

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment App'),
        ),
        body: TextControl(),
      ),
    );
  }
}