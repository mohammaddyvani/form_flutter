import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("Welcome to My Aplication", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            RaisedButton(
              elevation: 5.0,
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              color: Colors.black,
              child: Text('LOGOUT', style: TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 12.0, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
