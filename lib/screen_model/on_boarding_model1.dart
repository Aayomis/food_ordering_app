import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left:27.5.w,right: 27.5.w),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 162.h),
                  height: 175.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/frame1.png"),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              ),
              SizedBox(height: 50.h,),
              Center(
                child: Text('Choose A Tasty Dish',
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
                    TextSpan(text: 'Order anything you want from your\n',style: TextStyle(fontSize: 16.sp,color: Color(0xff6E80B0))),
                    TextSpan(text: 'favorite restaurant.\n',style: TextStyle(fontSize: 16.sp,color: Color(0xff6E80B0))),
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