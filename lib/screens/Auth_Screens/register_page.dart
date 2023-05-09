import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/reusable_button/large_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering_app/screens/Auth_Screens/Login_Page.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                margin: EdgeInsets.only(left: 24.w, right: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 34.h,),
                    Center(
                      child: Text('Register',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff18172B)
                        ),
                      ),
                    ),
                    SizedBox(height: 18.h,),
                    Center(
                      child: Text('Access account',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff6E80B0)
                        ),
                      ),
                    ),
                    SizedBox(height: 38.h,),
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
                        SizedBox(width: 29.w,),
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
                    SizedBox(height: 30.h,),
                    Center(
                      child: Text('or Register with Email',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff6E80B0)
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    Text('Name',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff18172B)
                      ),
                    ),
                    SizedBox(height: 10.h,),
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
                            hintText: 'FullName',
                            contentPadding: EdgeInsets.symmetric(horizontal:20.0.w,vertical:20.h),
                            isDense: true
                        ),
                      ),
                    ),
                    SizedBox(height: 22.h,),
                    Text('Email',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff18172B)
                      ),
                    ),
                    SizedBox(height: 10.h,),
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
                    SizedBox(height: 22.h,),
                    Text('Password',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff18172B)
                      ),
                    ),
                    SizedBox(height: 10.h,),
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
                    SizedBox(height: 50.h,),
                    LargeButton(color: Color(0xff6D61F2), text: 'Sign Up' ),
                    SizedBox(height: 20.h,),
                    //TODO: Change this to text and TEXT BUTTON using ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Have any account? ',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff6E80B0)
                          ),
                        ),
                        InkWell(
                          onTap: (){Get.to(()=>loginPage());},
                          child: Text('Login',
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
              ),
            ))
    );
  }
}
