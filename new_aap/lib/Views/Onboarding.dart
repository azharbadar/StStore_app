import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/Views/login_view.dart';
import 'package:new_aap/properties/colors.dart';
import 'package:new_aap/properties/products_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboard_view extends StatefulWidget {
  const onboard_view({super.key});

  @override
  State<onboard_view> createState() => _onboard_viewState();
}

class _onboard_viewState extends State<onboard_view> {
    PageController _slidercontroller = PageController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height*0.5,

      // width: double.infinity,
              child: Image.asset("Oval.png",width: 160, fit: BoxFit.fitWidth),
            ),


           Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width*0.8,

              // height: 800,
              child: Image.asset("round_circle_1.png", width: 306,height: 306, fit: BoxFit.contain),
            ),


            // img2

            Container(
              
              alignment: Alignment.bottomLeft,
              height: MediaQuery.of(context).size.height*0.6,
      // width: double.infinity,
              child: Image.asset("Oval-1.png",width: 90, fit: BoxFit.fitWidth),
            ),


    Padding(
                  padding: const EdgeInsets.fromLTRB(120, 400, 0, 0),
                  child: SmoothPageIndicator(controller: _slidercontroller, count: 3,
                  effect: ExpandingDotsEffect(activeDotColor: Colorselect().yellowlightcolor,dotHeight: 8),),
                ),




          ],

        ),

        Text("Welcome to STStore!",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 2,),



        Text("With long experience in the audio industry,\n we create the best quality products",
        
        textAlign: TextAlign.center,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),

     SizedBox(height: 40,),

        ElevatedButton(onPressed: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => logins()
      )
      );

        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 207, 192, 56),
          padding: EdgeInsets.all(1),
          fixedSize: Size(280, 34)
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(width:100,),
            Text("Get Started"),
            SizedBox(width: 60,),
           Image.asset("arrow-long-right.png")
          ],
        ),

         ),
         

       ],
     ),

    );
  }
}