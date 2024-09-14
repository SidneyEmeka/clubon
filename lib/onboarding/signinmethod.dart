import 'package:clubon/homepage.dart';
import 'package:clubon/onboarding/loginpage.dart';
import 'package:clubon/onboarding/register.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

class Signinmethod extends StatefulWidget {
  const Signinmethod({super.key});

  @override
  State<Signinmethod> createState() => _SigninmethodState();
}


class _SigninmethodState extends State<Signinmethod> {

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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(child: SizedBox()),
                      Text(
                        "Welcome to Clubon",
                        style: Stylings.titles.copyWith(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
                        child: Text(
                            textAlign: TextAlign.center,
                            "Use Email to sign in/sign up or continue with a Google or Apple account",
                            style: Stylings.body
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ///email///
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return const Loginpage();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.mail, color: Colors.black, size: 20,),
                              const SizedBox(width: 10),
                              Text("Sign in with Email", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text("OR", style: Stylings.titles.copyWith(fontSize: 14),),
                      ),
                      ///google///
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return Homepage();
                          }));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                          decoration: BoxDecoration(
                              color: const Color(0xffffffffff2f2f2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset("${Stylings.imgPath}/googleicon.png"),
                              ),
                              const SizedBox(width: 10),
                              Text("Sign in with google", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ///apple//
                      GestureDetector(
                        onTap: () {
                          Get.to(Register(),
                              );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                          decoration: BoxDecoration(
                              color: const Color(0xffffffffff2f2f2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.apple, color: Colors.black, size: 26,),
                              const SizedBox(width: 8),
                              Text("Sign in with Apple", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                "Don't have an account?",
                                style: Stylings.body
                            ),
                            const SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return const Register();
                                }));
                              },
                              child: Text(
                                  "Register",
                                  style: Stylings.body.copyWith(color: Stylings.orange)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                "Terms of Use",
                                style: Stylings.body.copyWith(color: Colors.black54)
                            ),
                            GestureDetector(
                              onTap: (){
                        
                              },
                              child: Text(
                                  "Privacy Policy",
                                  style: Stylings.body.copyWith(color: Colors.black54)
                              ),
                            ),
                            Text(
                                "Already Paid",
                                style: Stylings.body.copyWith(color: Colors.black54)
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
