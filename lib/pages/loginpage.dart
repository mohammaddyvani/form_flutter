import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/pages/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool valueCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email, color: Colors.black),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Couldn't find your Account";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  obscureText: hidePassword,
                  decoration: new InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      suffixIcon: IconButton(
                        icon: hidePassword ? Icon(Icons.visibility_off, color: Colors.grey) : Icon(Icons.visibility, color: Colors.black),
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0))),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Incorrect password";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Text('Forgot password?', style: TextStyle(color: Colors.black, fontSize: 15)),
                      onTap: () {
                        Navigator.pushNamed(context, '/forgotpass');
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: valueCheckbox,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        valueCheckbox = value!;
                      });
                    },
                  ),
                  Text('Remember me', style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/homepage');
                    }
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  color: Colors.black,
                  child: Text('LOGIN', style: TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 18.0, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account? "),
                    GestureDetector(
                      child: Text('Sign Up', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
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
