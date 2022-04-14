import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendToEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Check your email', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Text("We've sent an email to thr address provided. Click the link in the email or click the button bellow reset your password"),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text("If you don't see the email, check other places it might be, like your junk, spam, social, or other foldres."),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Text('Click here to continue', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.pushNamed(context, '/resetpass');
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Back to "),
                    GestureDetector(
                      child: Text('Sign In', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
