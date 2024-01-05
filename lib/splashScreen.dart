import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zomato_ui/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("zomato",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "seymourone",
                  fontSize: 50,
                ),),
              ),
              Text("Carbon and Plastic Neutral",style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "noto",
                  fontWeight: FontWeight.bold
              ),),
              Text("Deliveries in India",style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "noto",
                  fontWeight: FontWeight.bold
              ),),
              Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: SizedBox(
                    height: 150,
                    child: Image.asset("assets/Images/earth_tree_zomato_image_1.jpg",),)
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(
                    height: 250,
                    width: 400,
                    child: Image.asset("assets/Images/zomato_trees.jpg")),
              ),
            ]
        ),
      ),
    );
  }
}
