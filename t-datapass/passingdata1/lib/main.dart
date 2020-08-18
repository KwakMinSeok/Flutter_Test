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
var empty;
_MyHomePageState({this.newtitle});
Future<dynamic> myfuture(hello) async{
print(1);
await print(hello);
print(3);

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("$newtitle"),
          NewWidget(myonetext: empty,mytwotext:sayhi),
            
          ],
        ),
      ),
    );
  }
}
Widget check(a,b)=> NewWidget(myonetext: a,mytwotext:b);
class NewWidget extends StatelessWidget {
  NewWidget({this.myonetext,this.mytwotext});
  var myonetext;
  var mytwotext;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$myonetext"
      "$mytwotext"
    );
  }
}