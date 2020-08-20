import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondHome(),
    );
  }
}
class SecondHome extends StatefulWidget {
  var mytext;
  SecondHome({this.mytext});
  @override
  _SecondHomeState createState() => _SecondHomeState(myhitext: mytext);
}

class _SecondHomeState extends State<SecondHome> {
  TextEditingController mycontroller = TextEditingController();
  var myhitext;
  String onchangedtext;
  _SecondHomeState({this.myhitext});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      appBar: AppBar(title: Text('SecondPage'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Row(),
           TextField(
             onChanged: (String value){
              value= onchangedtext;
             },
             controller: mycontroller,
           ),
           RaisedButton(
          onPressed:()async{
           await _popnavigationwithbool(context, onchangedtext);}
        ),
        Text(myhitext)
         ],
      ),
    ), onWillPop: ()=>Future.value(false));
  }
}
void _popnavigationwithbool(BuildContext context, dynamic result){
  Navigator.pop(context,result);
}