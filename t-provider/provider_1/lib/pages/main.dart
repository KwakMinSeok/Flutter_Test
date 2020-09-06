import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/bloc/theme.dart';
void main()=> runApp(
  ChangeNotifierProvider<ThemeChanger>(
    builder: (_)=> ThemeChanger(ThemeData.dark()),
  ),
  MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  
  }
}
class MaterialAppwithTheme extends StatelessWidget {
  const MaterialAppwithTheme({
    Key key
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}