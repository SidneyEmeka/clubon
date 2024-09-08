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
              width: 50,
              height: 50,
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
              "Welcome back to Clubon",
              style: Stylings.titles.copyWith(fontSize: 20),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
              child: Text(
                  textAlign: TextAlign.center,
                  "Enter your details to continue",
                  style: Stylings.body),
            ),
            SizedBox(height: size.height*0.06),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70,
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "First Name",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70,
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Last Name",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70,
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Email",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70,
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Date of Birth",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70,
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Password",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70,
                          border: Border.all(
                            color: Colors.black38,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Confirm Password",
                            border: InputBorder.none),
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
                      height: 55,
                      decoration: BoxDecoration(
                          color: Stylings.orange,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text("Create Account", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.white),),

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
                        Text("Already have an account?", style: Stylings.body),
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
                              style: Stylings.body
                                  .copyWith(color: Stylings.orange)),
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
