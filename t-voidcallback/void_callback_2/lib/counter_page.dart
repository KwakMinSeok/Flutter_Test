import 'package:flutter/material.dart';
import 'count.dart';
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Communication"),),
    body: Center(
      child: Count(count:count,
      onCountSelected: ()=>setState(()=>count=0),
      onCountChanged: (int val)=>setState(()=>count+=val)
      ),
    ),
    );
    
  }
}