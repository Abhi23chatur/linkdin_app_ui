import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../SignUpScreen/SignUpScreen2.dart';
import '../signin_page/signin_page.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    bool remember = false;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                  child: SvgPicture.asset("assets/Logo.svg",
                    height: 35,width: 35,
                  ),
                ),
                SizedBox(height: 5,),
                Padding(padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Forgot Screen",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text("or",style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                          ),),
                          Padding(padding: EdgeInsets.only(left: 5),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                              },
                              child: Text("Sign in",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5,),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Email or Phone"
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("We'll send a verification code to this email or phone number if it matches an existing Linked account", style: TextStyle(
                          fontSize: 14
                      ),),
                      SizedBox(height: 25,),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen2()));
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
                            "Reset password",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 25,),




                      // Row(
                      //   children: [
                      //     SizedBox(
                      //       height: 0.3,
                      //       width: MediaQuery.of(context).size.width / 2.5,
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //             color: Colors.black
                      //         ),
                      //       ),
                      //     ),
                      //     Text(" or ",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.w500
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 0.3,
                      //       width: MediaQuery.of(context).size.width / 2.5,
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //             color: Colors.black
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                      // SizedBox(height: 5,),
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //       labelText: "Email or Phone"
                      //   ),
                      // ),
                      // // SizedBox(height: 5,),
                      // TextFormField(
                      //   obscureText: true,
                      //   decoration: InputDecoration(
                      //       labelText: "Password",
                      //       suffixIcon: Icon(
                      //         Icons.remove_red_eye,
                      //         size: 30,)
                      //   ),
                      // ),

                      //SizedBox(height: 10,),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Checkbox(
                      //         value: remember,
                      //         activeColor: Colors.green[900],
                      //         onChanged: (value) {
                      //           setState(() {
                      //             remember = value!;
                      //           });
                      //         }),
                      //     Text("Remember me.",
                      //       style: TextStyle(
                      //           fontSize: 16,
                      //           color: Colors.grey[800]
                      //       ),
                      //     ),
                      //     SizedBox(width: 10,),
                      //     Text("Learn more",style: TextStyle(
                      //         color: kPrimaryColor,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.bold
                      //     ),)
                      //   ],
                      // ),
                      // InkWell(
                      //   onTap: (){},
                      //   child: Text("Forgot Password?",
                      //     style: TextStyle(
                      //         color: kPrimaryColor,
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w500
                      //     ),),
                      // ),
                      // SizedBox(height: 20,),
                      // SizedBox(
                      //   width: double.infinity,
                      //   height: 50,
                      //   child: ElevatedButton(
                      //     onPressed: (){
                      //       // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen2()));
                      //     },
                      //     style: ButtonStyle(
                      //         backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                      //         shape: MaterialStateProperty.all<
                      //             RoundedRectangleBorder>(
                      //             RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(25),
                      //               side: BorderSide(color: kPrimaryColor),
                      //             )
                      //         )
                      //     ),
                      //
                      //     child: Text(
                      //       "Continue",
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 18
                      //       ),
                      //     ),
                      //
                      //   ),
                      // ),

                    ],
                  ),

                ),

              ],
            ),
          ),

        ));
  }

}
