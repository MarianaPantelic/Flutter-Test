import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {

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
              child: Text("Primary button"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: Size(150, 50),
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