 import 'package:flutter/material.dart';
 import 'package:signinapp/route/route.dart' as route;
 


 class LoginPage2 extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    // code for the login page layout
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('login successuffly'),
        ),
      body: Padding(
      padding:  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),    
      child: Column(
        
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
                  Text(
                  ' Successfully login!',
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 40),
                ),
                ElevatedButton(
          child: Text('Return to Home Page'),
         onPressed: () {
                  {
                  Navigator.of(context).pushNamedAndRemoveUntil(route.welcomepagePage, (route) => false);
                  }
     
              },
          ),
        ]
        
      ),
      ),
      );
    }
 }