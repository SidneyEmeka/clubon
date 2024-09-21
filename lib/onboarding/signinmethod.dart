import 'package:clubon/auths/authservice.dart';
import 'package:clubon/homepage.dart';
import 'package:clubon/onboarding/loginpage.dart';
import 'package:clubon/onboarding/register.dart';
import 'package:clubon/screens/termsandprivacy.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

import '../getxserver/businesslogic.dart';
import 'chooselocation.dart';

class Signinmethod extends StatefulWidget {
  const Signinmethod({super.key});

  @override
  State<Signinmethod> createState() => _SigninmethodState();
}


class _SigninmethodState extends State<Signinmethod> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  height: size.height,
                  width: size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        "${Stylings.imgPath}/dj.png",
                        fit: BoxFit.cover,
                        width: size.width,
                        height: size.height * 0.5,
                      ),
                    ],
                  )),
              Positioned.fill(
                top: size.height * 0.44,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      isLoading==true? LinearProgressIndicator(color: Stylings.orange,borderRadius: BorderRadius.circular(20),):Container(),
                      const Expanded(flex:1,child: SizedBox()),
                      Text(
                        "Welcome to Clubon",
                        style: Stylings.titles.copyWith(fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                            textAlign: TextAlign.center,
                            "Use Email to sign in/sign up or continue with a Google or Apple account",
                            style: Stylings.subTitles.copyWith(fontSize: 10)
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ///email///
                      GestureDetector(
                        onTap: () {
                        Get.to(()=>const Loginpage());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.5
                              ),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.mail, color: Colors.black, size: 18,),
                              const SizedBox(width: 5),
                              Text("Sign in with Email", style: Stylings.titles.copyWith(fontSize: 11),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text("OR", style: Stylings.titles.copyWith(fontSize: 10),),
                      ),
                      ///google///
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoading=true;
                          });
                         AuthServices().signInWithGoogle(context);
                        },
                        child: Container(
                           alignment: Alignment.center,
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                          decoration: BoxDecoration(
                              color: const Color(0xffffffffff2f2f2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 18,
                                width: 18,
                                child: Image.asset("${Stylings.imgPath}/googleicon.png"),
                              ),
                              const SizedBox(width: 5),
                              Text("Sign in with google", style: Stylings.titles.copyWith(fontSize: 11),),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      ///apple//
                      GestureDetector(
                        onTap: () {
                          Get.snackbar("title", "message",messageText: Text("This feature is only available for IOS devices",style: Stylings.subTitles.copyWith(fontSize: 11),),titleText: Text("Not Supported",style: Stylings.titles.copyWith(fontSize: 12),));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          decoration: BoxDecoration(
                              color: const Color(0xffffffffff2f2f2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 4,right: 2),
                                child: Icon(Icons.apple_sharp, color: Colors.black, size: 24,),
                              ),
                              Text("Sign in with Apple", style: Stylings.titles.copyWith(fontSize: 11),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                                "Don't have an account?",
                                style: Stylings.subTitles.copyWith(fontSize: 10)
                            ),
                            const SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){
                                Get.to(()=>const Register());
                              },
                              child: Text(
                                  "Register",
                                  style: Stylings.subTitles.copyWith(color: Stylings.orange,fontSize: 11)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.to(()=>const Termsandprivacy(which: "terms"));
                              },
                              child: Text(
                                  "Terms of Use",
                                  style: Stylings.subTitles.copyWith(color: Colors.black54,fontSize: 10)
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                        Get.to(()=>const Termsandprivacy(which: "which"));
                              },
                              child: Text(
                                  "Privacy Policy",
                                  style: Stylings.subTitles.copyWith(color: Colors.black54,fontSize: 10)
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(()=>const Termsandprivacy(which: "which"));
                              },
                              child: Text(
                                  "Already Paid",
                                  style: Stylings.subTitles.copyWith(color: Colors.black54,fontSize: 10)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.4,
                child: Container(
                  padding: const EdgeInsets.all(18),
                  width: Get.height*0.09,
                  height: Get.height*0.09,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("${Stylings.imgPath}/redlogo.png",fit: BoxFit.cover,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
