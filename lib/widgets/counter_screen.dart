import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/content_view.dart';

class CounterScreen extends StatefulWidget {

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int _count = 0;

  void _incrementCount(){
    setState(() {
      _count++;
    });
  }

  void _decrementCount(){
    if(_count<1){
      return;
    }
    setState(() {
      _count--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _incrementCount),
            Text("${_count}", style: TextStyle(fontSize: 20),),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: _decrementCount)
          ],
        ))
      ),
    );
  }
}