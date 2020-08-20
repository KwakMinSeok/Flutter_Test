import 'package:flutter/material.dart';
import 'secondpage.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var mytext="3";
var newthing;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MainPage'),),
         body:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Row(),
             RaisedButton(onPressed: () async{
               var navigationresult = await Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondHome(mytext: mytext,)));
             
              if(navigationresult==null){
                newthing="stillnull";
              }
              else{
                 navigationresult= newthing;
              }
             }
             ),

             Text(newthing==null?"null":newthing)
           ],
         )
    );
  }
}
