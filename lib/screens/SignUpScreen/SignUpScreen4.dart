import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class SignUpScreen4 extends StatefulWidget {
  const SignUpScreen4({super.key});

  @override
  State<SignUpScreen4> createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
  bool remember = false;
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
                        Text("Set yor password",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25
                          ),
                        ),
                        SizedBox(height: 50,),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Email or Phone*"
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "password*"
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: remember,
                                activeColor: Colors.green[900],
                                onChanged: (value) {
                                setState(() {
                                  remember = value!;
                                  });
                            }),
                            Text("Remember me.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[800]
                            ),
                            ),
                            SizedBox(width: 10,),
                            Text("Learn more",style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(height: 15,),

                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen3()));
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
