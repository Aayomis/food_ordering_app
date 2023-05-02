import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/reusable_button/large_button.dart';
import 'package:food_ordering_app/screens/on_boarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: SafeArea(child:
      Container(
        padding: EdgeInsets.only(left:27.5.w,right: 27.5.w),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 133.h),
                height: 235.h,
                width: 320.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/frame3.png"),
                        fit: BoxFit.contain
                    )
                ),
              ),
            ),
            SizedBox(height: 50.h,),
            Center(
              child: Text('Easy Payment',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff18172B)
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Payment made easy through debit\n',style: TextStyle(fontSize: 16.sp,color: Color(0xff6E80B0))),
                  TextSpan(text: 'card, credit card & more ways to pay\n',style: TextStyle(fontSize: 16.sp,color: Color(0xff6E80B0))),
                  TextSpan(text: 'for your food',style: TextStyle(fontSize: 16.sp,color: Color(0xff6E80B0))),
                ],
              ),
              textAlign: TextAlign.center,
              strutStyle: StrutStyle(
                  height: 2.h
              ),
            ),


          ],
        ),
      ),
      )
    );
  }
}