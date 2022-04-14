import 'package:flutter/material.dart';
import 'package:tugas/pages/loginpage.dart';
import 'package:tugas/pages/forgotpasspage.dart';
import 'package:tugas/pages/homepage.dart';
import 'package:tugas/pages/registerpage.dart';
import 'package:tugas/pages/resetpassword.dart';
import 'package:tugas/pages/components/sendtoemail.dart';
import 'package:tugas/pages/components/successreset.dart';
import 'package:tugas/pages/components/successcreate.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/forgotpass':
        return MaterialPageRoute(builder: (_) => ForgotPassPage());
      case '/homepage':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/sendemail':
        return MaterialPageRoute(builder: (_) => SendToEmail());
      case '/resetpass':
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case '/successreset':
        return MaterialPageRoute(builder: (_) => SuccessReset());
      case '/successcreate':
        return MaterialPageRoute(builder: (_) => SuccessCreate());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(child: Text('404 error', style: TextStyle(fontSize: 25.0))),
      );
    });
  }
}
