import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Password reset', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Text("Your password has been reset successfully"),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 40.0),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () {
                        Navigator.pushNamed(context, '/homepage');
                      },
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.black,
                      child: Text('CONTINUE', style: TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 18.0, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
