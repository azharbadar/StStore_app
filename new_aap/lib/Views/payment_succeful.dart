// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:new_aap/properties/products_list.dart';

// class payment_view extends StatefulWidget {
//   const payment_view({super.key});

//   @override
//   State<payment_view> createState() => _payment_viewState();
// }

// class _payment_viewState extends State<payment_view> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//                ListTile(
//             leading: Image.asset("arrow-long-left.png"),
            
//             title: Center(child: Text("ORDER COMPLETE", style: TextStyle(fontWeight: FontWeight.w700),)),
//             trailing: Image.asset("Combined_Shape.png"),
//           ),

// SizedBox(height: 160),
//            Row(
//             mainAxisAlignment:MainAxisAlignment.center,
//              children: [
//                Container(
//                 child: Icon(Icons.payment, size: 40,),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                       color: Color(0xffC6AB59),
//                 ),
//                 width: 70,
//                 height: 70,
                
//                ),
//              ],
//            ),
// ListView.builder(
//   itemCount: list2.length,
//   itemBuilder:
//      (context , index)
//      {
//        list2[index].name;
//        list2[index].subject;
//        list2[index].address;
//      }
//   )
          
      

//         ],
//       ),
//     );
//   }
// }