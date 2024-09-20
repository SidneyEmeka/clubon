import 'package:clubon/onboarding/register.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.01,),
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
              "Welcome back to Clubon",
              style: Stylings.titles.copyWith(fontSize: 15),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Text(
                  textAlign: TextAlign.center,
                  "Type in your email and password to continue",
                  style: Stylings.subTitles.copyWith(fontSize: 11)),
            ),
            //SizedBox(height: size.height*0.15,),
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline_rounded,
                              size: 15,
                              color: Stylings.orange,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "An error occured right now",
                              style: Stylings.subTitles
                                  .copyWith(color: Stylings.orange, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      //email
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
                        height: 10,
                      ),
                      //Implement hidepassfeature
                      //password
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
                        height: 20,
                      ),
                      //button
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          alignment: Alignment.center,
                          width: size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Stylings.orange,
                              borderRadius: BorderRadius.circular(8)),
                          child:  Text("Log In", style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),

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
                Text("Don't have an account?", style: Stylings.subTitles.copyWith(fontSize: 10)),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>Register());
                  },
                  child: Text("Register",
                      style: Stylings.subTitles.copyWith(color: Stylings.orange,fontSize: 11)),
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
                      style: Stylings.subTitles.copyWith(color: Colors.black54,fontSize: 10)),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Privacy Policy",
                        style: Stylings.subTitles.copyWith(color: Colors.black54,fontSize: 10)),
                  ),
                  Text("Already Paid",
                      style: Stylings.subTitles.copyWith(color: Colors.black54,fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
