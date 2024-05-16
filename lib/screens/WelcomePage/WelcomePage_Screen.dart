import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../constants.dart';
import '../SignUpScreen/SignUpScreen2.dart';
import '../signin_page/signin_page.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            Center(
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/Logo.svg",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text("Join a trusted community of 800M\nprofessionals",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            Padding(padding: EdgeInsets.all(20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("By Clicking Agree & Join or Continue, you agree to the Linkedin User Agreement, Privency Policy, and Cookie Policy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12
                  ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen2()));
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
                        "Agree & Join",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen2())
                        // );
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(color: Colors.black),
                              )
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons-google.svg",
                          width: 23,
                            height: 23,
                          ),
                          SizedBox(width: 10,),
                          Text("Continue with Google",
                            style: TextStyle(
                            color: Colors.black54,
                              fontSize: 19
                          ),)
                        ],
                      )
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen2()));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  side: BorderSide(color: Colors.black),
                                )
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/facebook-logo.svg",
                              width: 23,
                              height: 23,
                            ),
                            SizedBox(width: 10,),
                            Text("Continue with Facebook",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 19
                              ),)
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Text("Sign in",style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),),
              ),
            )
          ],
        ),
      ),
    )
    );
  }
}
