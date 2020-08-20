import 'package:datapass_5/iconpage.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'mynewcard.dart';

void main() => runApp(MyApp());

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
  List<dynamic> mylist = [];
  List<dynamic> bluetilelist=[];
  var textdata;
  nextpage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>IconPage(newbluetiles: bluetilelist,)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      actions: [IconButton(icon: Icon(Icons.list), onPressed: ()=>nextpage())],
      ),
        body: Column(
      children: [
        Row(),
        FlatButton(
            onPressed: () {
              setState(() {
                generateWordPairs().take(1).forEach((element) {
                  textdata = element;
                  mylist.add(textdata);
                });
              });
            },
            child: Text('create card')),
        Container(
            color: Colors.amber,
            height: 684,
            width: 500,
            child: ListView(
              children: [
                Column(
                  children: mylist
                      .map((e) => MyNewCard(
                        newq: e,newdelete:(){
                          setState(() {
                          mylist.remove(e);  
                          print(mylist);
                          });
                        },
                        addnewbluetile: (value){
                          if(value==true){
                            bluetilelist.add(e);
                          }if(value==false){
                            bluetilelist.remove(e);
                          }
                          print(bluetilelist);
                        }
                      )
                      )
                      .toList(),
                )
              ],
            ))
      ],
    ));
  }
}


Widget makenewcard(value) => MyNewCard(
  newq: value,
);
   
Widget getbluetile(newvale)=> IconPage(
  newbluetiles: newvale,
);