import 'package:clubon/homepage.dart';
import 'package:clubon/onboarding/loginpage.dart';
import 'package:clubon/onboarding/register.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: [
                      Image.asset(
                        "${Stylings.imgPath}/dj.png",
                        fit: BoxFit.cover,
                        height: size.height * 0.5,
                      ),
                    ],
                  )),
              Positioned(
                top: size.height * 0.43,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50, horizontal: 20),
                  width: size.width,
                  height: size.height * 0.57,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(child: SizedBox()),
                      //const SizedBox(height: 20),
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
                      const SizedBox(height: 20,),
                      ///email///
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return const Loginpage();
                          }));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          height: 55,
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
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("OR", style: Stylings.titles.copyWith(fontSize: 15),),
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
                          height: 55,
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
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          height: 55,
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
                      const Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
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
                top: size.height * 0.39,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("${Stylings.imgPath}/redlogo.png", height: 14, width: 14,fit: BoxFit.contain,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
