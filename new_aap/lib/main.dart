
import 'package:flutter/material.dart';
import 'package:new_aap/Views/Categories.dart';
import 'package:new_aap/Views/Onboarding.dart';
import 'package:new_aap/Views/cart.dart';
import 'package:new_aap/Views/filter.dart';
import 'package:new_aap/Views/login_view.dart';
import 'package:new_aap/Views/order_failed.dart';
import 'package:new_aap/Views/order_reviewss.dart';
import 'package:new_aap/Views/order_sucess.dart';
import 'package:new_aap/Views/payment_succeful.dart';
import 'package:new_aap/Views/single_product.dart';
import 'package:new_aap/Views/test.dart';
import 'Views/shipping.dart';
import 'Views/single_product.dart';
import 'package:new_aap/Views/signup.dart';
import 'package:new_aap/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:(cart_view()),
    );
  }
}