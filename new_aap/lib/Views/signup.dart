import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/properties/customwidget.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  

  bool? ischecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
       child: ListView(
        children: [
          Row( children: [
          SizedBox(height: 60,),
           Icon(Icons.location_on_outlined),   
          Text('karachi Clifton Pakistan',
          style: TextStyle(fontSize: 13),
          ), 
    ],),
  

    Text("Getting Started",
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
    ),
    SizedBox(height: 4,),
Text("Create an account to continue!", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey ),),

SizedBox(height: 10,),

Text("Email", style: TextStyle(color: Colors.grey),),

customtext(hinttext: "Email",icn: Icons.email_outlined),
SizedBox(height: 10,),

Text("Username", style: TextStyle(color: Colors.grey),),


customtext(hinttext: "Username",icn: Icons.man_sharp),

SizedBox(height: 10,),

Text("Password", style: TextStyle(color: Colors.grey),),

custompassword(hinttext: "Password",icn: Icons.lock_outline_sharp,sufix: Icons.remove_red_eye_outlined),


SizedBox(height: 20,),


 Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Checkbox(
      value: ischecked,
      onChanged: (newBool){
        setState(() {
          ischecked = newBool;
        });
      }),

      
      Text("By creating an account, you agree to our\nTerms & Conditions", style: TextStyle(fontSize: 12),
      ),
      
      // Text("Term & Conditions", style: TextStyle(fontSize: 12),),




  ], 
),

SizedBox(height: 20 ,),

ElevatedButton(onPressed: (){},
   style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 207, 192, 56),
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
 
SizedBox(height: 12,),

RichText(
  textAlign: TextAlign.center,
  text: TextSpan(
    text: "Already have an account?",
     style:TextStyle(color: Colors.grey),
    children: const <TextSpan>[
      TextSpan(style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Sign ip',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
    ],
  ),
),

SizedBox(height: 20,),


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

SizedBox(height: 10,),
 
  
        ],

       ),
     ),
    );
  }
}