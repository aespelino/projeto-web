import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Layout Responsivo Flutter')),
        body: ResponsiveLayout(),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Definindo as dimensões de largura e altura
    var largura = MediaQuery.of(context).size.width;

    // Retornando widgets diferentes dependendo da largura
    if (largura < 600) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.phone_android, size: 100, color: Colors.blue),
          Text("Layout Responsivo - Mobile", style: TextStyle(fontSize: 20)),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.laptop, size: 100, color: Colors.blue),
          SizedBox(width: 20),
          Text("Layout Responsivo - Desktop", style: TextStyle(fontSize: 20)),
        ],
      );
    }
  }
}
