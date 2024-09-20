import 'package:clubon/onboarding/loginpage.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:clubon/onboarding/verifyotp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  bool hidePassword = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return const Signinmethod();
            }));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "${Stylings.imgPath}/redlogo.png",
                height: 14,
                width: 14,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Welcome to Clubon",
              style: Stylings.titles.copyWith(fontSize: 15),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Text(
                  textAlign: TextAlign.center,
                  "Enter your details to continue",
                  style: Stylings.subTitles.copyWith(fontSize: 11)),
            ),
            Expanded(
                child: SingleChildScrollView(
                  reverse: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey.shade500,
                      cursorHeight: 15,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Stylings.orange)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(color: Colors.black,width: 0.5)
                          ),
                          labelText: "First Name",
                          floatingLabelStyle: Stylings.titles.copyWith(fontSize: 11) ,
                          labelStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500)
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey.shade500,
                      cursorHeight: 15,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Stylings.orange)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(color: Colors.black,width: 0.5)
                          ),
                          labelText: "Last Name",
                          floatingLabelStyle: Stylings.titles.copyWith(fontSize: 11) ,
                          labelStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500)
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey.shade500,
                      cursorHeight: 15,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Stylings.orange)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(color: Colors.black,width: 0.5)
                          ),
                          labelText: "Email",
                          floatingLabelStyle: Stylings.titles.copyWith(fontSize: 11) ,
                          labelStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500)
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey.shade500,
                      cursorHeight: 15,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Stylings.orange)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(color: Colors.black,width: 0.5)
                          ),
                          labelText: "Date of Birth",
                          floatingLabelStyle: Stylings.titles.copyWith(fontSize: 11) ,
                          labelStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500)
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey.shade500,
                      cursorHeight: 15,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Stylings.orange)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(color: Colors.black,width: 0.5)
                          ),
                          labelText: "Password",
                          floatingLabelStyle: Stylings.titles.copyWith(fontSize: 11) ,
                          labelStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500)
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey.shade500,
                      cursorHeight: 15,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Stylings.orange)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(color: Colors.black,width: 0.5)
                          ),
                          labelText: "Confirm Password",
                          floatingLabelStyle: Stylings.titles.copyWith(fontSize: 11) ,
                          labelStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500)
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return const Verifyotp();
                      }));

                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      alignment: Alignment.center,
                      width: size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Stylings.orange,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text("Create Account", style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Already have an account?", style: Stylings.subTitles.copyWith(fontSize: 10)),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                                  return const Loginpage();
                                }));
                          },
                          child: Text("Log in",
                              style: Stylings.subTitles
                                  .copyWith(color: Stylings.orange,fontSize: 11)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
