// Author: Digambar Chaudhari
// Author: Prachi Nathjogi
// Author: Bhavesh Patil

import 'package:feed_food/authenticate/otp_verify.dart';
import 'package:feed_food/authenticate/forgot_password.dart';
import 'package:feed_food/authenticate/set_password.dart';
import 'package:feed_food/authenticate/register_page_user.dart';
import 'package:feed_food/intro/walkthrough.dart';
import 'package:feed_food/pages/home_page.dart';
import 'package:feed_food/authenticate/login_page.dart';
import 'package:feed_food/authenticate/register_page.dart';
import 'package:feed_food/authenticate/register_page_ngo.dart';
import 'package:feed_food/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      initialRoute: FeedFoodRoutes().registerUser,
      routes: {
        "/": (context) => LoginPage(),
        FeedFoodRoutes().homeRoute: (context) => HomePage(),
        FeedFoodRoutes().loginRoute: (context) => LoginPage(),
        FeedFoodRoutes().registerRoute: (context) => RegisterPage(),
        FeedFoodRoutes().registerNgo: (context) => RegisterNgo(),
        FeedFoodRoutes().registerUser: (context) => RegisterUser(),
        FeedFoodRoutes().ForgotPassword: (context) => ForgotPassword(),
        FeedFoodRoutes().OtpPage: (context) => OtpPage(),
        FeedFoodRoutes().Walkthrough: (context) => Walkthrough(),
        FeedFoodRoutes().SetPass: (context) => SetPass(),
      },
    );
  }
}
