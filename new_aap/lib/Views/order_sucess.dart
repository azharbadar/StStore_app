import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/properties/products_list.dart';
import 'package:new_aap/Views/shipping.dart';


class order_succes extends StatefulWidget {
  const order_succes({super.key});

  @override
  State<order_succes> createState() => _order_succesState();
}

class _order_succesState extends State<order_succes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        
            ListTile(
            leading: Image.asset("arrow-long-left.png"),
           title: Center(child: Text("ORDER COMPLETE", style: TextStyle(fontWeight: FontWeight.w700),)),
            trailing: Icon(Icons.more_horiz)
          ),

  const  SizedBox(height: 120,),
        
        Center(
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffc6ab59),
            ),
            child: Image(image: AssetImage("shape.png")),
            width: 70,
            height: 70,
          ),
        ),
        SizedBox(height: 10,),
        Center(child: Text('Payment Succesfull', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),)
        ),
        SizedBox(height: 10,),
        Center(child: Text("Orders will arrive in 3 days!",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),

SizedBox(height: 80,),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              height: 110,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xfff3f6f8)),
                        child:
                            Center(child: Image.asset('img_3.png')),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Beosound 1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width:3,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xfff3f6f8)),
                        child:
                            Center(child: Image.asset('img_1.png')),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Beosound Ba..',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xfff3f6f8)),
                        child:
                            Center(child: Image.asset('speakr.png.png')),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Beoplay H4 2..',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xfff3f6f8)),
                        child:
                            Center(child: Image.asset('round_circle_1.png')),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Beoplay N4 ..',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

SizedBox(height: 80,),


          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: ElevatedButton(onPressed: (){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ShoppingScreen(),)
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
        SizedBox(width: 60),
        Image.asset("arrow-long-right.png")
              ],
            )
            ),
          ),





      
      
      ]),
    );
  }
}