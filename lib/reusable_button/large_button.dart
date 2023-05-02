import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LargeButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function()? onTap;

  const LargeButton({Key? key,
    required this.color,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 64.h,
        decoration:  BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.r)
        ),
        child: Center(
          child: Text(text,
            style:  TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xffffffff)
            ),
          ),
        ),
      ),
    );
  }
}
