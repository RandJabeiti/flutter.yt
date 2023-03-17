
import 'package:flutter/material.dart';
import 'package:signinapp/view/forgetpassword.dart';
import 'package:signinapp/view/login.dart';
import 'package:signinapp/view/login2.dart';
import 'package:signinapp/view/register.dart';
import 'package:signinapp/view/signup.dart';
import 'package:signinapp/view/welcomepage.dart';





  const String welcomepagePage = "welcomepage";
  const String loginPage = "login";
  const String signupPage = "signup";
  const String registerPage = "register";
  const String forgetpasswordPage = "forgetpassword";
  const String loginPage2 = "login2";

  void login() {}

  // controller function with switch statement to control page route flow
  Route<dynamic> controller(RouteSettings settings) {
    switch (settings.name) {
      case welcomepagePage:
        return MaterialPageRoute(builder: (context) => WelcomepagePage());
      case loginPage:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case signupPage:
        return MaterialPageRoute(builder: (context) => SignupPage());
      case registerPage:
        return MaterialPageRoute(builder: (context) =>  RegisterPage());
      case  forgetpasswordPage:
        return MaterialPageRoute(builder: (context) =>  ForgetpasswordPage());
      case loginPage2:
        return MaterialPageRoute(builder: (context) => LoginPage2());
      default:
        throw ("this route name does not exist");
    }
  }