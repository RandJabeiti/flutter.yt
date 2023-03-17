 import 'package:flutter/material.dart';
 import 'package:signinapp/route/route.dart' as route;
 

 void main() => runApp(LoginPage());



  class LoginPage extends StatelessWidget {
     final _formKey = GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
    // code for the login page layout
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body:
        Padding(
      padding:  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      child:Form(
          key: _formKey,
      child: Column(
        
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
                  Text(
                  'Login',
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
                ),

                    TextFormField(
                      
                      obscureText: false,
                       autofillHints: [AutofillHints.username],
                       decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: 'Email',
                       
                       ),
                       validator: (val) {
                        if (val! != 'Rand@gmail.com')
                        
                        return 'Incorrect email';

                       },
                    ),

                    TextFormField(
                       obscureText: true,
                       autofillHints: [AutofillHints.password],
                       decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: 'Password'
                       ),
                       validator: (val) {
                        if (val! != '12345678')
                        
                        return 'Incorrect password';

                       },
                    ),
                    
                    TextButton(
                    style: TextButton.styleFrom(
                foregroundColor: Colors.black,),
              onPressed: () { Navigator.pushNamed(context, route.forgetpasswordPage);
               
              },
              child: const Text('Forgot Password',),
                      ),
  
                   ElevatedButton( 
                    onPressed: () {
                if (_formKey.currentState!.validate()) {
                }
              },
                     child: const Text('login')),
                              

            
        ]
                
            )),
       ) );
  }
  } 