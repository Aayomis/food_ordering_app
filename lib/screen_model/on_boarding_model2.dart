import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/reusable_button/large_button.dart';
import 'package:food_ordering_app/screens/on_boarding_screen.dart';
class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
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
                margin: EdgeInsets.only(top: 177),
                height: 235,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/frame3.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Text('Easy Payment',
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
                  TextSpan(text: 'Payment made easy through debit\n',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
                  TextSpan(text: 'card, credit card & more ways to pay\n',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
                  TextSpan(text: 'for your food',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
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