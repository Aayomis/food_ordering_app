import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/reusable_button/large_button.dart';
import 'package:food_ordering_app/screens/on_boarding_screen.dart';
class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
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
                margin: EdgeInsets.only(top: 178),
                height: 233,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/Frame.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Text('Be Together',
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
                  TextSpan(text: 'Healthy eating means eating a variety\n',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
                  TextSpan(text: 'of foods that give you the nutrients you\n',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
                  TextSpan(text: 'need to maintain your health, feel\n',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
                  TextSpan(text: 'good, and have energy.',style: TextStyle(fontSize: 16,color: Color(0xff6E80B0))),
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

