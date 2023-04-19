import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/Views/Categories.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset('bar.png')
          ),
      ),


      Align(
          alignment: Alignment.center,
          child: Text("Browse by Categories", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          ),

// image 1 start 


      Padding(
        padding: const EdgeInsets.fromLTRB(30, 2, 20, 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
              height:230,
              width: 190,
              // decoration: BoxDecoration(
              //   // color: Colors.blue[200],
              //   borderRadius: BorderRadius.circular(20)
              // ),
              child: Stack(children: [
              Positioned( top:70,
              child: 
              Image.asset("Base.png",
              )
              ),
               Positioned( 
                child: 
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Categories_view(),)
                    );
                  },
                  child: Image.asset("img_1.png",
                  width: 205,
                  height: 200,
                  ),
                ),
              ),

            const  Positioned(
                top: 170,
                left: 60,
                child:   
                Text('Speakers', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),
                ),
                ),

              const  Positioned(
                top: 200,
                left: 62,
                child:   
                Text('100+Product', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                ),
               ]
               ),                
              ),


             SizedBox(width: 10),
        /// image 2 start
           Container(
              height:230,
              width: 190,
              // decoration: BoxDecoration(
              //   // color: Colors.blue[200],
              //   borderRadius: BorderRadius.circular(20)
              // ),
              child: Stack(children: [
                Positioned( top:70,
                
                child: 
                Image.asset("Base.png",
                height: 180,
                width: 205,
                )
              ),
               Positioned(
                right: 10,
                child: 
                Image.asset("img_2.png",
                width: 205,
                height: 200,
                
                ),
              ),

              Positioned(
                top: 170,
                left: 60,
                child:   
                Text('headphones', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                ),

                Positioned(
                top: 200,
                left: 62,
                child:   
                Text('15+Product', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                ),
        
               ]
               ),
                
              ),
 
               
            ],
          ),
        ),
      ),          
    
      
      SizedBox(height: 2,),      
      Align(
          alignment: Alignment.center,
          child: Text("Recommended for You", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),)
     
          ),
   





Padding(
  padding: const EdgeInsets.fromLTRB(30, 40, 20, 10),
  child:   SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    
      children: [
    
      Container(
        height: 209,
        width:  145,
        child: Stack(
          children: [
            Image.asset("Base_2.png"),
            Positioned(
              top: 10,
              left: 12,
              child: Image.asset("img_3.png"), ),
            
  
   Positioned(
                  top: 120,
                  left: 30,
                  child:   
                  Text('Beosound 1', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                  ),
             Positioned(
                  top: 148,
                  left: 44,
                  child:   
                  Text('15+Product', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                  ),
          ],
        ),
      ) ,
  
  
  SizedBox(width: 10,),
  
  Container(
    height: 200,
    width: 145,
    child: Stack(children: [
     Image.asset("Base_2.png"),
  
       Positioned(
              top: 10,
              left: 12,
              child: Image.asset("img_4.png"),
              
               ),
  
                Positioned(
                  top: 120,
                  left: 30,
                  child:   
                  Text('Beolit 17', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                  ),
             Positioned(
                  top: 148,
                  left: 44,
                  child:   
                  Text('10+Product', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                  ),
  
    ]),
  )
  
  
  
      ],
    
    ),
  ),
),



      
      ]
      
      
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
          text: 'Search',
        ),
        GButton(
          onPressed: (){}
          ,backgroundColor: Color(0xffC6AB59),
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