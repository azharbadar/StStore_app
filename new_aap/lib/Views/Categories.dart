
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_aap/Views/filter.dart';
import 'package:new_aap/home.dart';
import 'package:new_aap/properties/customwidget.dart';
import 'package:new_aap/properties/products_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:new_aap/properties/colors.dart';
import 'package:new_aap/Views/single_product.dart';
class Categories_view extends StatefulWidget {
  const Categories_view({super.key});

  @override
  State<Categories_view> createState() => _Categories_viewState();
}

class _Categories_viewState extends State<Categories_view> {
  PageController _slidercontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: new FloatingActionButton(
      elevation: 0.0,
      child: new Icon(Icons.mail, color: Colors.black,),
      backgroundColor: new Color(0xffC6AB59),
      onPressed: (){}
    ),
      body: ListView(
        children: [
          ListTile(
            leading: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home(),));
              },
              child: Image.asset("arrow-long-left.png")),
          title: Center(child: Text("Speakers", style: TextStyle(fontWeight: FontWeight.w700),)),
            
            trailing: InkWell( child:  Image.asset("Combined_Shape.png"),),
            onTap: () {
              showModalBottomSheet(context: context, isScrollControlled: false,builder: (context) => Center(
              child: filter_view(),
              ),);
            },
            
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Stack(
              children: [
                Container(
                  width: 380,
                  height: 370,
                  child: Stack(children: [
                    Positioned(
                      top: 110,
                      child:  Image.asset("Base_new.png",
                      height: 237,
                      width: 345,)
                    ),
                    InkWell(
                      onTap:() {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SingleProduct(),));
                      },
                      child: Image.asset("speaker_img.png",
                      width: 305,
                      height: 245,
                      ),
                    ),
            const Positioned(
                    top: 220,
                    left: 40,
                    child:Text("Beosound Balance",
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                    ),
            const      Positioned(
                    top: 260,
                    left: 40,
                      child: Text("Innovative, wireless home speaker",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)),

                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 300, 0, 0),
                  child: SmoothPageIndicator(controller: _slidercontroller, count: productlist.length,
                  effect: ExpandingDotsEffect(activeDotColor: Colorselect().blacktextcolor,dotHeight: 8),),
                ),

                  ]
                  ),
                         
                ),
              ],
              
            ),
          ),


     Container(
         child:const DefaultTabController(
            length: 4,
            child: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(child: Text('View', style: TextStyle(color: Colors.black),)),
                  Tab(child: Text('Portfolio', style: TextStyle(color: Color.fromARGB(255, 109, 104, 104)),)),
                Tab(child: Text('Multiroom', style: TextStyle(color: Color.fromARGB(255, 109, 104, 104)),)),
                 Tab(child: Text('Architecture', style: TextStyle(color: Color.fromARGB(255, 109, 104, 104)),)),
                ],
              ),
          ),
        ),



Padding(
  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  child:   Container(
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  
    color:const Color(0xffF3F6F8),
      ),
    height: 112,
    width: 305,
  child: Row(
    children: [
   Image.asset("img_3.png"),
   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  const   SizedBox(height: 18,),
  const   Text("Beasound 1", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      ),
      Row(
        children:  [
        const Text("4.5", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,),
          ),
  const   SizedBox(width: 10,),
          rating_box(box_color: Colorselect().yellowlightcolor),
          rating_box(box_color: Colorselect().yellowlightcolor),
          rating_box(box_color: Colorselect().yellowlightcolor),
          rating_box(box_color: Colorselect().yellowlightcolor),
          rating_box(box_color: Colorselect().greytextcolor)
        ],
      ),
const     Text("\$1600", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,),
      ),

           
      
    ],
   )
    ],
  ),
  ),
),

const SizedBox(height: 10,),



Padding(
  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  child:   Container(
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  
    color: Color(0xffF3F6F8),
      ),
    height: 112,
    width: 305,
  child: Row(
    children: [
   Image.asset("round_circle_1.png"),
   Column(
    children: const[
      SizedBox(height: 18,),
      Text("Beasound 1 \n 4.5 \n \$1600 ", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      ),

      
    ],
   )
    ],
  ),

 
    
  
  ),
)



        ],

        
      ),
      


      
    );
    
  }
}