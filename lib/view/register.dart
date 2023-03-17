import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:signinapp/route/route.dart' as route;



class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _RegisterPage();
  }
}



 class _RegisterPage extends State<RegisterPage>with SingleTickerProviderStateMixin {
    
    late Animation<double> animation; 
  late AnimationController animationcontroller; 

  @override
  void initState() {
    animationcontroller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    
    animationcontroller.repeat();
    animation = Tween<double>(begin: 0, end:250).animate(animationcontroller);
    animation.addListener(() {
         setState(() { }); 
    });
    super.initState();
  }
  @override
dispose() {
  animationcontroller.dispose(); // you need this
  super.dispose();
}
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Register Page'),
        ),
      body: Column(

        children: [
          Text('Successfully Registered!',
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),),
                  
                  ElevatedButton(
          child: Text('Return to Home Page'),
         onPressed: () {
                  {
                  Navigator.of(context).pushNamedAndRemoveUntil(route.welcomepagePage, (route) => false);
                  }
          
           
                        
              },
          ),

          Expanded(
            child:Container(
           padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
           alignment:Alignment.center,
           height:300,
           child:Container(
               decoration: BoxDecoration(
                 shape:BoxShape.circle, 
                 color:Colors.grey 
               ),
               height:animation.value, 
               width: animation.value, 
           ),
           
         ),
         
       )
      ]
     ), 
   );
  } 
}