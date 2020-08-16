import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title:'home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var title;
  MyHomePage({this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState(newtitle:title);
  //named parameter 할때 a:b라고 하면, a가 정해주는 클래스로 b가 받는 거임!
}

class _MyHomePageState extends State<MyHomePage> {
var newtitle;
var sayhi="hi";
_MyHomePageState({this.newtitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
           NewWidget(mytext: sayhi),
            Text("$newtitle")
          ],
        ),
      ),
    );
  }
}
Widget check(a)=> NewWidget(mytext: a);
class NewWidget extends StatelessWidget {
  NewWidget({this.mytext});
  var mytext;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$mytext"
      
    );
  }
}
class MyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}