import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        child: Form(
         key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              Center(
                child: Text('Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff18172B)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text('Access account',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6E80B0)
                  ),
                ),
              )
            ],
          ),
        )
      )
    );

  }
}
