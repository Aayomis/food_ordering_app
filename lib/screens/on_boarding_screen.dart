import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/reusable_button/large_button.dart';
import 'package:food_ordering_app/screen_model/on_boarding_model.dart';
import 'package:food_ordering_app/screen_model/on_boarding_model1.dart';
import 'package:food_ordering_app/screen_model/on_boarding_model2.dart';
import 'package:food_ordering_app/screens/Auth_Screens/Login_Page.dart';

class onBoardingPage extends StatefulWidget {
  const onBoardingPage({Key? key}) : super(key: key);

  @override
  State<onBoardingPage> createState() => _onBoardingPageState();
}

class _onBoardingPageState extends State<onBoardingPage> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3()
            ],
          ),
          onLastPage?
          Positioned(
              right: 27.5,
              top: 100,
              child: Text('',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff6E80B0)
                ),
              )) :
          Positioned(
              right: 27.5,
              top: 64,
              child: GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: Text('Skip',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff6E80B0)
                  ),
                ),
              )),
          onLastPage?
              Container():
          Container(
            alignment: Alignment(0,0.6),
            child: SmoothPageIndicator(controller: _controller, count: 3, effect: ScrollingDotsEffect(
                activeDotColor: Color(0xff6D61F2),
                dotColor: Colors.grey.withOpacity(0.4),
                activeDotScale: 1,
                maxVisibleDots: 5,
                radius: 8,
                spacing: 10,
                dotHeight: 12,
                dotWidth: 12
            ),),
          ),
          onLastPage?
          Container(
            alignment: Alignment(0, 0.9),
            child:  LargeButton(color: Color(0xff6D61F2), text: 'Get Started',
                onTap: (){Get.to(()=>loginPage());}
            )
          ):
          Container(
              alignment: Alignment(0, 0.9),
              child:  LargeButton(color: Color(0xff6D61F2), text: 'Next',
                  onTap: () {
                    _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                  }
              )
          )

        ],
      ),
    );
  }
}
