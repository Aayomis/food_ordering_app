import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/reusable_button/large_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering_app/screens/Auth_Screens/register_page.dart';
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    print('h is: $h');
    print('w is: $w');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36.h,),
            Center(
              child: Text('Login',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff18172B)
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Center(
              child: Text('Access account',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff6E80B0)
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 56.h,
                  width: 148.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: Color(0xffF8F8FA)
                  ),
                  child: Center(
                    child: Image(image: AssetImage('images/google.png')),
                  ),
                ),
                SizedBox(width: 31.w,),
                Container(
                  height: 56.h,
                  width: 148.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: Color(0xffF8F8FA)
                  ),
                  child: Center(
                    child: Image(image: AssetImage('images/fb.png')),
                  ),
                )
              ],
            ),
            SizedBox(height: 32.h,),
            Center(
              child: Text('or Login with Email',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff6E80B0)
                ),
              ),
            ),
            SizedBox(height: 32.h,),
            Text('Email',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff18172B)
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
                width:MediaQuery.of(context).size.width,
                height: 56.h,
                decoration: BoxDecoration(
                    color: Color(0xffF8F8FA),
                    borderRadius: BorderRadius.circular(18.r)
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      contentPadding: EdgeInsets.symmetric(horizontal:20.0.w,vertical:20.h),
                      isDense: true
                  ),
                ),
              ),
            SizedBox(height: 24.h,),
            Text('Password',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff18172B)
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
                width:MediaQuery.of(context).size.width,
                height: 56.h,
                decoration: BoxDecoration(
                    color: Color(0xffF8F8FA),
                    borderRadius: BorderRadius.circular(18.r)
                ),
                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    contentPadding: EdgeInsets.symmetric(horizontal:20.0.w,vertical:20.h),
                    isDense: true,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),

            SizedBox(height: 64.h,),
            LargeButton(color: Color(0xff6D61F2), text: 'Sign In' ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? ',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff6E80B0)
                  ),
                ),
                InkWell(
                  onTap: (){Get.to(()=>RegisterPage());},
                  child: Text('Register',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff6D61F2),
                          fontWeight: FontWeight.w500
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ))
    );

  }
}
