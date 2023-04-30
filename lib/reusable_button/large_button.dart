import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        height: 64,
        width: 327,
        decoration:  BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(text,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xffffffff)
            ),
          ),
        ),
      ),
    );
  }
}
