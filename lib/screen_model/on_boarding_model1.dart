import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/reusable_button/large_button.dart';
import 'package:food_ordering_app/screens/on_boarding_screen.dart';
class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left:27.5,right: 27.5),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 207),
                height: 175,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/frame1.png"),
                        fit: BoxFit.contain
                    )
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Text('Choose A Tasty Dish',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff18172B)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Order anything you want from your\n',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
                  TextSpan(text: 'favorite restaurant.\n',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
                ],
              ),
              textAlign: TextAlign.center,
              strutStyle: StrutStyle(
                  height: 2
              ),
            ),

          ],
        ),
      ),
    );
  }
}