import 'package:flutter/material.dart';
import 'package:signinapp/route/route.dart' as route;



class ForgetpasswordPage extends StatelessWidget {
    final TextEditingController _newpassword = TextEditingController();
  final TextEditingController _confirmnewpassword = TextEditingController();
    final _formKey = GlobalKey<FormState>();
   
  
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Forget password'),
      ),
      body:Padding(
      padding:  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      child:Form(
          key: _formKey,
          
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [

                  Text('Reset your pssword',
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),),
                  
                    TextFormField(
                      
                      obscureText: false,
                       autofillHints: [AutofillHints.username],
                       decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       fillColor: Colors.white, filled: true,
                       icon: Icon(Icons.email,color: Colors.black),
                       hintText: 'Email',
                       
                       
                       ),
                       validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Please enter your email';
                      }
                      if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                        return 'Please a valid Email';
                      }
                      
                      return null;
                    },
                       
                    ),
                    

                    TextFormField(
                       controller: _newpassword,
                       obscureText: true,
                       autofillHints: [AutofillHints.password],
                       decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       fillColor: Colors.white, filled: true,
                       icon: Icon(Icons.lock,color: Colors.black),
                       hintText: 'New password'
                       ),
                       
                        
    
                          
                        validator: (value) {
                         if (value!.length < 8 ) {
                         return 'Password length should be at least 8 digits';
                          }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _confirmnewpassword,
                       obscureText: true,
                       autofillHints: [AutofillHints.password],
                       decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       fillColor: Colors.white, filled: true,
                       icon: Icon(Icons.lock,color: Colors.black),
                       hintText: 'Confirm new password'
                       ),
                        validator: (validator) {
                  if (validator != _newpassword.text)
                    return 'The passwords do not match';
                  return null;}
                       
                    ),

        ElevatedButton(
          child: Text('Confirm'),
         onPressed: () {
                 if (_formKey.currentState!.validate()) {
                 ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Successfully changed your password')),
                  );
                  }          
              },
                       )
            ],
          ),

        ),
       
      )    
    );
  }
  } 