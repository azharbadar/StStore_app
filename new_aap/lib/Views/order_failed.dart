import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/properties/products_list.dart';

class order_failed extends StatefulWidget {
  const order_failed({super.key});

  @override
  State<order_failed> createState() => _order_failedState();
}

class _order_failedState extends State<order_failed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        
            ListTile(
            leading: Image.asset("arrow-long-left.png"),
           title: Center(child: Text("ORDER COMPLETE", style: TextStyle(fontWeight: FontWeight.w700),)),
            trailing: Icon(Icons.more_horiz)
          ),

SizedBox(height: 100,),
        
        Center(
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xffF8B6C3), 
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image(image: AssetImage("cancel.png")),
            ),
            width: 70,
            height: 70,
          ),
        ),
        SizedBox(height: 10,),
        Center(child: Text('Order Failed', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),)
        ),
        SizedBox(height: 10,),
        Center(child: Text("Your Payment Occured an error",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),



SizedBox(height: 40,),

Divider(
  color: Color.fromARGB(255, 228, 222, 222),
  thickness: 1,
),


SizedBox(height: 20,),

Icon(Icons.quiz_outlined),
SizedBox(height: 10,),

Text("Don't Worry 😉",textAlign: TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),

SizedBox(height: 12,),
Text(
textAlign: TextAlign.center,
"Keep calm, sometimes it happens\nPlease go back and check your payment method\nor contact us",
style: TextStyle(fontSize: 15, height: 2),
),


          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xffC6AB59),
              fixedSize: Size(200, 34)
            ),
            child: Row(
              children: [
                 SizedBox(width:10,),
        Image.asset("arrow-long-right.png"),       
        SizedBox(width: 20),

         Text("REVIEW PAYMENT METHOD"),
              ],
            )
            ),
          ),

SizedBox(height: 2,),



          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xfff3f6f8),
            
            ),
            child:  Text("Please...I need help!"),
            ),
          ),


      
      
      ]),
    );
  }
}