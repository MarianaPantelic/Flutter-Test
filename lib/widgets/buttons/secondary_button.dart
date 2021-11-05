import 'package:flutter/material.dart';

class SecondaryButton extends StatefulWidget {

  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {

  var text = "";
  int count = 0;

  void _showText(){
    setState(() {
      count++;
      if(count==1){
        text = "You have clicked ${count} time the button";
      } else {
        text = "You have clicked ${count} times the button";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              child: Text("Secondary button", style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade200,
                minimumSize: Size(100, 70),
              ),
              onPressed: _showText),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Text(text)
            )
              
          ],
        ),
        )
    );
  }
}