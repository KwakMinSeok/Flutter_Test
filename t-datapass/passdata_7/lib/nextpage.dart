import 'package:flutter/material.dart';
import 'user.dart';
class NextPage extends StatefulWidget {
  final User value;
  NextPage({Key key,this.value}):super(key:key);
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  mainpage(){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.value.name),
          Text(widget.value.age),
          Text(widget.value.id),
          RaisedButton(onPressed: ()=>mainpage())
        ],
      )
    );
  }
}