import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/properties/colors.dart';
import 'package:new_aap/properties/products_list.dart';

class test_view extends StatefulWidget {
  const test_view({super.key});

  @override
  State<test_view> createState() => _test_viewState();
}

class _test_viewState extends State<test_view> {
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
          Container(
            height: 200,
            width: 380,
            child: ListView.builder(
              
              scrollDirection: Axis.horizontal,
              itemCount: productlist_two.length,
              itemBuilder: ((context, index) {
                return Column(
                     children: [
                      Container(width: 100,
                      height: 100,      
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colorselect().detail_btn_color),
                        child: Image(image: AssetImage(productlist_two[index].primage)),
                      ),
                      SizedBox(width: 120,),
                      Text(productlist[index].product_name),
                     ],
                );

              })),
          ),


Container(
  height: 100,
  child:   ListView.builder(
  
    itemCount: productlist_two.length,
  
    itemBuilder: (context, index) {
  
      return Column(
        children: [
          Container(width: 100,
          height: 211,

          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
            child: Text("how are you"),
          ),
          decoration: BoxDecoration(
                      color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          ),
        
        ],
  
      );
  
  },),
)

        ],
      ),
    );
  }
}