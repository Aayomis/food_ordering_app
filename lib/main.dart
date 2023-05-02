import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_ordering_app/screens/on_boarding_screen.dart';
import 'package:food_ordering_app/screens/Auth_Screens/Login_Page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (BuildContext context,  child){
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const onBoardingPage()
        );
    }
    );
  }
}

