import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_aap/Views/order_reviewss.dart';

import 'cart.dart';
import 'order_reviewss.dart';


class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 60),
                    height: MediaQuery.of(context).size.height * 0.67,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                        color: Color(0xffC6AB59),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('shipping_img.png.png'),
                          radius: 60,
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        Text(
                          'Azhar Din',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'azharud27@gmail.com',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                          SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              color: Color(0xfff2f2f2)),
                          margin: EdgeInsets.only(right: 25, left: 25),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Order #CS1020'),
                                  Text('In Progress'),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(255, 231, 232, 232)
                                            ),
                                        child:
                                            Image.asset('img_3.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Beosound 1',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(255, 231, 232, 232)
                                            ),
                                        child:
                                            Image.asset('img_1.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Beosound…',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(255, 231, 232, 232)
                                            ),
                                        child:
                                            Image.asset('speakr.png.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Beoplay H…',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 0,
                              ),
                              Text(
                                'Your order is on its way!',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Orders will arrive in 3 days!',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ElevatedButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Color(0xffC6AB59),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9))),
                                    onPressed: (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  order_review())));
                                    }),
                                    child: Container(
                                      width: 100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Track',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            // textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Image.asset('shipping_icon.png'),
                title: Text(
                  'My Account',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Edit your informations',
                ),
                trailing: const Icon(
                  Icons.arrow_right_alt_sharp,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Divider(
                  thickness: 2,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(gap: 10, tabs: [
        GButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => order_review())));
          },
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
          text: 'Search',
        ),
        GButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => cart_view())));
          },
          backgroundColor: Color(0xffC6AB59),
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          borderRadius: BorderRadius.circular(30),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          icon: Icons.shopping_bag_outlined,
          text: 'Cart',
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