import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'SignUpScreen3.dart';
class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset("assets/Logo.svg",width: 35,height: 35,),
                  ),
                  SizedBox(height: 40,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Add your name",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30
                      ),
                      ),
                      SizedBox(height: 40,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "First Name*"
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Last Name*"
                        ),
                      ),
                      SizedBox(height: 35,),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen3()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(color: kPrimaryColor),
                                  )
                              )
                          ),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
              
                        ),
                      ),
                    ],
                  ),
                  )
                ],
              ),
            ),
          ),

    ));
  }
}
