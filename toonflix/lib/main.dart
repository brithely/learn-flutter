import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // 시작이 되는 위젯 (root widget)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 99,
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
