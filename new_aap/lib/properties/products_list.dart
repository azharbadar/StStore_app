import 'package:flutter/material.dart';

class productlist_class {
  final product_sno;
  final product_name;
  final product_price;
  final product_img;
  final product_description;
  final product_color;
  final product_category;
  final bool? product_add_to_cart;

  productlist_class({
      this.product_sno, 
      this.product_name,
      this.product_price,
      this.product_img,
      this.product_description,
      this.product_color = Colors.yellowAccent,
      this.product_category,
      this.product_add_to_cart = false});
}

List<productlist_class> productlist = [
  productlist_class(
      product_sno: 1,
      product_name: "Beosound 1",
      product_price: "400",
      product_img: "img_3.png",
      
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "Speaker"),
  productlist_class(
      product_sno: 2,
      product_name: "Beosound 2",
      product_price: "600",
      product_img: "img_1.png",
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "Speaker"),
  productlist_class(
      product_sno: 3,
      product_name: "Beoplay H4 2…",
      product_price: "200",
product_img: "img_3.png",
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "headphones"),
  productlist_class(
      product_sno: 4,
      product_name: "Beoplate 1",
   product_img: "img_3.png",
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "Speaker"),
];




class productlist_class_two{
  final primage;
  final prname;
  final prtext;
  final prprofession;
  productlist_class_two({this.primage,this.prname,this.prtext,this.prprofession});
}

List <productlist_class_two> productlist_two =[
  productlist_class_two(
    primage : "img_3.png",
    prname :  "zain",
    prtext :   "khan", 
    prprofession : "developer",
    )
];
List datalist = [
  {"name":"Ali",
  "age":19,
  "class": 15}
];