import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Username cannot be used, please use another Username!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email, color: Colors.black),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Email cannot be used, please use another Email!";
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Text("I've read and aggre to Terms & Conditions", style: TextStyle(fontSize: 15, color: Colors.black)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/successcreate');
                    }
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  color: Colors.black,
                  child: Text('CREATE ACCOUNT', style: TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 18.0, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
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
