

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/properties/customwidget.dart';

class filter_view extends StatefulWidget {
  const filter_view({super.key});
  @override
  State<filter_view> createState() => _filter_viewState();
}

class _filter_viewState extends State<filter_view> {

RangeValues values = RangeValues(1 ,10000);
  
  @override
  Widget build(BuildContext context) {

RangeValues labels = RangeValues(values.start.toDouble(), values.end.toDouble());
// int value1 = 1, value2 =10000;

    return Scaffold(
         body: Padding(padding: EdgeInsets.all(20),
      child: Container( 
     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [

/////////// GENDER //////////////        
        Text("Gender",style:TextStyle(fontWeight: FontWeight.w700),),
SizedBox(height: 16,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            // ElevatedButton(child: Text('MEN'),onPressed: (){} ),
            Container( height: 30, width: 80, color: Color(0xffC6AB59),
            child: Center(child: Text('MEN'),)),
            SizedBox(width: 20,),
            Container( height: 30, width: 80, color: Color(0xfff3f6f8),
            child: Center(child: Text('WOMEN'),)),
            SizedBox(width: 20,),
            Container( height: 30, width: 80, color: Color(0xfff3f6f8),
            child: Center(child: Text('BOTH'),)),
            ],),
        ),


/////////  PRICE RANGE ///////////////////

SizedBox(height: 16),          

         Text("Price Range",style:TextStyle(fontWeight: FontWeight.w700),),

         RangeSlider(
          values: values,

          // labels: labels,
          divisions: 1000,
          activeColor: Color(0xffC6AB59), inactiveColor: Colors.grey,
          min: 1, max: 10000,
         onChanged: (newvalue){
          values = newvalue;
          setState(() { });
         }
         
         ),
       
                 SizedBox(height: 16,),

        Row(children: [
          Container(child: Row(
            children: [
              
            ],
          ),),
        Text("Min Price: ",  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
        Container(child: Text(values.start.toString(),style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),),

SizedBox(width: 10),
        Text("Max Price: ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
        Container(child: Text(values.end.toString(),style: TextStyle( fontWeight: FontWeight.w500,fontSize: 15),),),
  
],),
SizedBox(height: 16,),
 Text("Color",style:TextStyle(fontWeight: FontWeight.w700),),

SizedBox(height: 16,),

Row(
  children: [
filter_color(item_color: Color(0xffC6AB59)),
SizedBox(width: 7,),           
filter_color(item_color: Color(0xff02C697)),
SizedBox(width: 7,),          
filter_color(item_color: Color(0xffF8B6C3)),
SizedBox(width: 7,),
filter_color(item_color: Color(0xff3C79E6)),
SizedBox(width: 7,),
filter_color(item_color: Colors.black,),
SizedBox(width: 7),
filter_color(item_color: Color(0xffC6AB59)),
  
  ],
),

Padding(
  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
  child:   Row(
  children: [
    ElevatedButton(onPressed: (){},
     style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffC6AB59),
        fixedSize: Size(170, 30)
     ),
    child: Text("Apply Filters")
    ),
  SizedBox(width: 10,),
  ElevatedButton(onPressed: (){},
  style: ElevatedButton.styleFrom(
    fixedSize: Size(80, 10),
    backgroundColor:Color(0xfff3f6f8),
  ),
   child: Text("Reset")
   ),
  ],
  
  ),
),


          ])))
    );
  }
}