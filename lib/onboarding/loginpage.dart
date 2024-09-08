import 'package:clubon/onboarding/register.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utils/styles/stylings.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  bool hidePassword = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return const Signinmethod();
            }));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: Container(
        height: size.height,
        margin: EdgeInsets.only(bottom:size.height*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.01,),
            Container(
              padding: const EdgeInsets.all(15),
              width: 80,
              height: 80,
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
                  "Type in your email and password to continue",
                  style: Stylings.body),
            ),
            SizedBox(height: size.height*0.15,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    size: 20,
                    color: Stylings.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "An error occured right now",
                    style: Stylings.subTitles
                        .copyWith(color: Stylings.orange, fontSize: 12),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //email
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white70,
                                  border: Border.all(
                                    color: Colors.black38,
                                  )),
                              child: TextFormField(
                                validator: (value) {
                                  if (value != _passwordController.text.trim() ||
                                      value == null) {
                                    return "Password doesn't match";
                                  }
                                  return null;
                                },
                                controller: _passwordController,
                                obscureText: hidePassword,
                                obscuringCharacter: "*",
                                decoration: InputDecoration(
                                    suffix: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            hidePassword == true
                                                ? hidePassword = false
                                                : hidePassword = true;
                                          });
                                        },
                                        icon: Icon(
                                          hidePassword == true
                                              ? FluentSystemIcons
                                                  .ic_fluent_eye_hide_filled
                                              : FluentSystemIcons
                                                  .ic_fluent_eye_show_filled,
                                          size: 15,
                                          color: Colors.brown,
                                        )),
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    hintText: "Password",
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      //button
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          alignment: Alignment.center,
                          width: size.width,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Stylings.orange,
                              borderRadius: BorderRadius.circular(8)),
                          child:  Text("Log In", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.white),),

                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
       height: size.height*0.22,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: Stylings.body),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) {
                          return const Register();
                        }));
                  },
                  child: Text("Register",
                      style: Stylings.body
                          .copyWith(color: Stylings.orange)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Terms of Use",
                      style: Stylings.body.copyWith(color: Colors.black54)),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Privacy Policy",
                        style: Stylings.body.copyWith(color: Colors.black54)),
                  ),
                  Text("Already Paid",
                      style: Stylings.body.copyWith(color: Colors.black54)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
