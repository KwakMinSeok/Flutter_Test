import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutterdemo',
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      home: CounterPage(title:'hi'),
    );
  }
}

class CounterPage extends StatefulWidget {
final String title;
CounterPage({this.title,Key key}):super(key:key);
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}