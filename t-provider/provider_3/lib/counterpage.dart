import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int _counter;
  Counter(this._counter);
  getcounter()=>_counter;
  setcounter(int counter)=>
    _counter= counter;
    void increment(){
      _counter++;
      notifyListeners();

    }
    void decrement(){
       _counter--;
       notifyListeners();
    }
  
}