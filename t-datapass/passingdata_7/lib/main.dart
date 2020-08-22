import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'user.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title:'MyHomePage'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}):super(key:key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<User>> _getusers() async{
    final response = await http.get('https://kiloloco.com/api/users');
    final userResponse = json.decode(response.body);

    List<User> users =[];
    for(var i =0;i<userResponse.length;i++){
      final user
      users.add(userResponse[i]);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title==null?"empty":widget.title,textAlign: TextAlign.right),
      backgroundColor: Colors.purple,
      ),
      body: Center(
        child: mytext(widget.title),
      ),
    );
  }
}

Widget mytext(String text){
  return Text(text);
}