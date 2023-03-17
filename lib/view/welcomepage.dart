import 'package:flutter/material.dart';
import 'package:signinapp/route/route.dart' as route;

 

  class WelcomepagePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    // code for the login page layout
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Welcome Page'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                 Image(image: AssetImage('images/llogin.jpg')),
                 Column(
                  children: [
                  Text(
                  'Welcome!',
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 40),
                )

                  ],
                 ),
                 Row(
                  children: [
                    Expanded(
                     child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, route.loginPage),
                    child: const Text('Login')
                    )),
                     SizedBox(height: 10),

                    Expanded(
                     child: TextButton( onPressed: () => Navigator.pushNamed(context, route.signupPage),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black)
                    ),
                    child:const Text('Signup')
                    )),
                  
                  ]
                    ),
                  ],
            
                 )
        
        )
        );

          
                
            
    
  }
  } 