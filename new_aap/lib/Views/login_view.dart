import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/Views/Onboarding.dart';
import 'package:new_aap/home.dart';
import 'package:new_aap/properties/customwidget.dart';

class logins extends StatefulWidget {
  const logins({super.key});

  @override
  State<logins> createState() => _loginsState();
}

class _loginsState extends State<logins> {


  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var errorText = '';

  login() {
    if (email.text == 'azharud27@gmail.com' && password.text == '123') {
      print("Login Successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const home()),
      );
    } else {
      errorText = 'Login failed';
      print("Login failed");
    }
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
       child: ListView(
        children: [
          Row( children: [
          SizedBox(height: 90,),
           Icon(Icons.location_on_outlined),   
          Text('karachi Clifton Pakistan',
          style: TextStyle(fontSize: 13),
          ), 
    ],),
  
SizedBox(height: 30,),
    Text("Let's Sign You In",
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
    ),
    SizedBox(height: 10,),
Text("Welcome back, you’ve been missed!", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey ),),

SizedBox(height: 30,),

Text("Username or Email", style: TextStyle(color: Colors.grey),),





customtext(hinttext: "Email",icn: Icons.manage_accounts_outlined),


SizedBox(height: 40,),



Text("Password", style: TextStyle(color: Colors.grey),),

custompassword(hinttext: "Password",icn: Icons.lock_outline_sharp,sufix: Icons.remove_red_eye_outlined),


SizedBox(height: 120,),
         

ElevatedButton(onPressed: (){

                login();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home(),));
},
   style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xffC6AB59),
      padding: EdgeInsets.all(1),
      fixedSize: Size(200, 34),
   ),
 child: Row(
     children: [
      
      SizedBox(width:100,),
        Text("GET STARTED"),
        SizedBox(width: 40),
        Image.asset("arrow-long-right.png")
     ],


 )
 ),
 
SizedBox(height:12,),

RichText(
  textAlign: TextAlign.center,
  text: TextSpan(
    text: "Don't have an account?",
     style:TextStyle(color: Colors.grey),
    children: const <TextSpan>[
      TextSpan(style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Sign Up',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
    ],
  ),
),

SizedBox(height: 40,),


ElevatedButton(onPressed: (){},
style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
),

 child: Row(
 children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
      child: Image.asset("fb.png"),
    ),
    SizedBox(width: 30,),
    Text("Connect with Facebook")

 ],

 ),
 ),

SizedBox(height: 20,),
 
  
        ],

       ),
     ),
    );
  }
}