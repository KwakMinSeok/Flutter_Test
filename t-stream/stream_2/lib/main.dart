import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 10;
  final StreamController<int> _streamController = StreamController();
  final Stream<int> mystream =
      Stream.periodic(Duration(seconds: 1), (int x) => x);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Hello'),
            StreamBuilder<int>(
              stream: _streamController.stream,
              initialData: _counter,
              builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                return Text("you hit me ${asyncSnapshot.data} tims");
              },
              
            ),
            StreamBuilder(
              stream: mystream,
              builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                return Text("${asyncSnapshot.data}");
              },
            ),
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _streamController.sink.add(++_counter);
        },
      ),
      
    );
  }
}
