import 'package:flutter/material.dart';
import 'package:noteapp_3/providers/todofolder_provider.dart';
import 'package:noteapp_3/screen/myhomepage_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TodoFolderProvider(),
          child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}