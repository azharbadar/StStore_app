import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/Views/cart.dart';
import 'package:new_aap/home.dart';
import 'package:new_aap/properties/customwidget.dart';

class SingleProduct extends StatefulWidget {
  const SingleProduct({super.key});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  bool value = false;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 117, 142, 159),
      body: ListView(
        children: 
          [Column(
            children: [
              Container(
                  color: Color(0xfff3f6f8),
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => home()));
                                },
                                child:
                                    ImageIcon(AssetImage('arrow-long-left.png')),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(Icons.shopping_bag_outlined),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 450,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.45,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              color: Colors.white),
                        ),
                      ),
                      Positioned(
                          right: -70,
                          top: 272,
                          child: Image.asset('speaker_img.png')),
                      Positioned(
                          top: 150,
                          left: 30,
                          child: Container(
                              width: 400,
                              height: 400,
                              child: Stack(children: [
                                Positioned(
                                  top: 10,
                                  child: Text(
                                    'Speakers',
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  child: Text(
                                    'BeoSound',
                                    style: TextStyle(
                                        fontSize: 30, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  child: Text(
                                    'Balance',
                                    style: TextStyle(
                                        fontSize: 30, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 120,
                                  child: Text(
                                    'From',
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Positioned(
                                  top: 150,
                                  child: Text(
                                    "1,600 PKR",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 210,
                                  child: Text(
                                    'Available Colors',
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Positioned(
                                    top: 240,
                                    child: Row(
                                      children: [
                                        MyRadioListTile<int>(
                                          value: 1,
                                          groupValue: _value,
                                          leading: '',
                                          title: Text(''),
                                          onChanged: (value) =>
                                              setState(() => _value = value!),
                                        ),
                                        MyRadioListTile<int>(
                                          value: 2,
                                          groupValue: _value,
                                          leading: '',
                                          title: Text(''),
                                          onChanged: (value) =>
                                              setState(() => _value = value!),
                                        ),
                                        MyRadioListTile<int>(
                                          value: 3,
                                          groupValue: _value,
                                          leading: '',
                                          title: Text(''),
                                          onChanged: (value) =>
                                              setState(() => _value = value!),
                                        ),
                                      ],
                                    )),
                                Positioned(
                                    top: 380,
                                    child: Text(
                                      'Wireless, smart home speaker',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    )),
                              ]))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 560, 30, 0),
                        child: Column(
                          children: [
                            Positioned(
                                child: Text(
                                    'A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home.',
                                    style: TextStyle(fontSize: 14),
                                    )),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xffC6AB59),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9))),
                                onPressed: (() {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) => cart_view())));
                                }),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  width: 290,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 70),
                                        child: Text(
                                        textAlign: TextAlign.center,
                                          'ADD TO CART',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                                                         ],
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}