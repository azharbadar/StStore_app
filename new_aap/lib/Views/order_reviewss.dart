import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/Views/order_sucess.dart';
import 'package:new_aap/home.dart';

import 'package:new_aap/properties/products_list.dart';
import 'package:new_aap/main.dart';

class order_review extends StatefulWidget {
  const order_review({super.key});

  @override
  State<order_review> createState() => _order_reviewState();
}

class _order_reviewState extends State<order_review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
          ListTile(
            leading: InkWell(
              child: Image.asset("arrow-long-left.png"),
              onTap: () {},
            ),
            title: Center(
                child: Text(
              'ORDER REVIEW',
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
            )
            ),
            trailing: InkWell(
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.black,
                ),
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return home();
                    },
                  ));
                })),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Porducts',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: (() {}),
                    icon: Icon(Icons.arrow_drop_down_circle_outlined))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
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
                    width: 20,
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
                    width: 20,
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
                    width: 20,
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


  const        SizedBox(
            height: 25,
          ),
    const      Divider(),
    
    const      Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
            child: Text(
              'SHIPPING',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              children: [
                Row(
                  children: [
          const          Icon(Icons.location_on_outlined),
          const          Text(
                      'Nazimabad karachi Pakistan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                const    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: (() {}),
                        child: Container(
                            height: 22,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color(0xffc6ab59)),
                            child: const Center(
                                child: Text(
                              'Change',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ))))
                  ],
                ),
              ],
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
              child: const ListTile(
                leading: Icon(
                  Icons.shopping_basket_outlined,
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
      const    Padding(
            padding:  EdgeInsets.only(left: 30.0, top: 20),
            child: Text(
              'PAYMENT',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20, right: 30),
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child:  Container(
                      width: 50,
                      child: Stack(
                        children: [
                          Positioned(
                              child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffeb001b)),
                          )),
                          Positioned(
                              left: 14,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xfff79e1b),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  title: const Padding(
                    padding:  EdgeInsets.only(top: 5.0),
                    child: Text(
                      '** 9000',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2),
                    ),
                  ),
                  trailing: TextButton(
                      onPressed: (() {}),
                      child: Container(
                          height: 22,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xffc6ab59)),
                          child: const Center(
                              child: Text(
                            'Change',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ))))),
            ),
          ),
      const    SizedBox(
            height: 10,
          ),
      const    Divider(),
      const    SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
               Text(
                  'Shipping',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                Text(
                  'Free',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10, right: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Total'),
                  Text(
                    ' 9,800 PKR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20, right: 30),
            child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffC6AB59),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9))),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const order_succes())));
                }),
                child:  Container(
                  width: 290,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 100),
                        child: Text(
                          'Place Order',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          // textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                )),
          ),
        ]));
  }
}