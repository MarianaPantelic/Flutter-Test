import 'package:flutter/material.dart';

class DisabledButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              child: Text("Disabled button", style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: Size(100, 40),
              ),
              onPressed: null),  
          ],
        ),
        )
    );
  }
}