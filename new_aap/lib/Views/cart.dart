import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_aap/Views/order_reviewss.dart';
import 'package:new_aap/properties/colors.dart';

class cart_view extends StatefulWidget {
  const cart_view({super.key});

  @override
  State<cart_view> createState() => _cart_viewState();
}

class _cart_viewState extends State<cart_view> {

  int value = 0;


void add()
{
  setState(() {
    value++;    
  });

}


void subtract()
{
  setState(() {
    value--;    
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
                 ListTile(
            leading: Image.asset("arrow-long-left.png"),
           title: Center(child: Text("My CART", style: TextStyle(fontWeight: FontWeight.w700),)),
            trailing: Icon(Icons.more_horiz)
          ),

           Padding(
             padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
             child: Container(
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffF3F6F8),
               ),
                 width: 305,
                 height: 140, 
                 child: Row( 
                  children: [
                    Image.asset("img_3.png"),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Beasound 1",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)
                        ),
                        SizedBox(height: 8,),
                
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("Color"),
                            SizedBox(width: 10,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              color: Colors.black,
                              ),
                              width: 20,
                              height:20,
                            ),
                            SizedBox(width: 10,),
                            Text("Size"),
                            SizedBox(width: 10,),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                              ),
                              child: Text("S"),
                              width: 20,
                              height:20,
                            ),                            
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 70,0),
                          child: Text("\$1600",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                        ),

                      

Padding(
  padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
  child:   Row(
    children: [
  InkWell(
     onTap: () {
       subtract();
     },
     child: const Text("-", style: TextStyle(fontSize: 30)
     ),
  
  ),
  
                    Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              alignment: Alignment.topLeft,
                              height: 20,
                              width: 20,
                              child: TextField(
                                enabled: false,
                                decoration:InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: value.toString(),
                                  border: null,
                                  contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 13)
                                ),
                              ),
                        ),
  
  InkWell(
  
    onTap: () {
  
      add();
  
    },
  
    child: Text("+", style: TextStyle(fontSize: 22),),
  
  ),
  Icon(Icons.delete)
  
    ],
  
  ),
)


                  

                      ],
                    ),

                  ],
                 ),
             ),
             
           ),




Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 40,
                ),
                title: Text(
                  'Standard',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('2-3 days'),
                trailing: Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),



Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.multiline_chart,
                  color: Colors.black,
                  size: 40,
                ),
                title: Text(
                  'Standard',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('2-3 days'),
                trailing: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffC6AB59),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),  
                      child: Text("ST#132", style: TextStyle(color:Colors.black),)),
                    )
                  ],
                )
              ),
            ),
          ),

SizedBox(height: 60,),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colorselect().blacktextcolor),),
                Text("\$ 9,800", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colorselect().blacktextcolor),),
              ],
            ),
          ),

SizedBox(height: 30,),


          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: ElevatedButton(onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => order_review(),)
             );

            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0xffC6AB59),
              fixedSize: Size(200, 34)
            ),
            child: Row(
              children: [
                 SizedBox(width:100,),
        Text("CHECKOUT"),
        SizedBox(width: 40),
        Image.asset("arrow-long-right.png")
              ],
            )
            ),
          ),


        ],



      ),










bottomNavigationBar: GNav(gap: 10, tabs: [
        GButton(
          backgroundColor: Color(0xffC6AB59),
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          borderRadius: BorderRadius.circular(30),
          margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          backgroundColor: Color(0xffC6AB59),
          borderRadius: BorderRadius.circular(30),
          icon: Icons.search_outlined,
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          text: 'Likes',
        ),
        GButton(
          onPressed: (){}
          ,backgroundColor: Color(0xffC6AB59),
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          borderRadius: BorderRadius.circular(30),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          icon: Icons.shopping_bag_outlined,
          text: 'Search',
        ),
        GButton(
          backgroundColor: Color(0xffC6AB59),
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          borderRadius: BorderRadius.circular(30),
          margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
          icon: Icons.account_circle_outlined,
          text: 'Profile',
        )
      ]),









    );


    
  }
}

