import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_1/posts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostPage(),
    );
  }
}