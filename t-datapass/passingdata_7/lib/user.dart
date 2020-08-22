import 'package:flutter/material.dart';

class User{
  final String name;
  final int id;
  final int age;
  User({this.name,this.id,this.age});
  factory User.fromJson(Map<String,dynamic>json ){
    return User(
      id:json['id'],
      name:json['name'],
      age: json['age'],
    );
  }

}