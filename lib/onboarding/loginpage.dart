import 'package:clubon/onboarding/chooselocation.dart';
import 'package:clubon/onboarding/register.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  String passWord = '', eMail = '', error = '';
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();

  void login() async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: eMail, password: passWord);
      setState(() {
        isLoading=true;
      });
      Future.delayed(const Duration(seconds: 2),(){
        Get.offAll(()=>const Chooselocation());
        isLoading=false;
      });
    }on FirebaseAuthException catch(e){
      print(e.code);
      if(e.code=='user-not-found'){
        setState(() {
          error = "No user found for $eMail";
        });
      }
     else if(e.code=='wrong-password'){
        setState(() {
          error = "Incorrect login details";
        });
      }
     else if(e.code=='invalid-email'){
        setState(() {
          error = "Invalid email address";
        });
      }
     else if(e.code=='Invalid-credential'){
        setState(() {
          error = "Details not correct";
        });
      }
     //print(e.code);
    }
  }

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
          child: const Icon(
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
            isLoading==true?const LinearProgressIndicator(color: Colors.white,):Container(),
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
                     error.isNotEmpty? Padding(
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
                              error,
                              style: Stylings.subTitles
                                  .copyWith(color: Stylings.orange, fontSize: 10),
                            ),
                          ],
                        ),
                      ):Container(),
                      //email
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          style: Stylings.subTitles.copyWith(fontSize: 11),
                          controller: _emailController,
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.grey.shade500,
                          cursorHeight: 15,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Stylings.orange)
                              ),
                              errorStyle: Stylings.subTitles.copyWith(fontSize: 10,color: Stylings.orange),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Stylings.orange)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
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
                      //password
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          style: Stylings.subTitles.copyWith(fontSize: 11),
                          controller: _passwordController,
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'Enter your password';
                            }
                            return null;
                          },
                          obscureText: hidePassword,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.grey.shade500,
                          cursorHeight: 15,
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Stylings.orange)
                              ),
                              errorStyle: Stylings.subTitles.copyWith(fontSize: 10,color: Stylings.orange),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Stylings.orange)
                              ),
                              suffixIcon: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      hidePassword==true?hidePassword=false:hidePassword=true;
                                    });
                                  },child: Icon(hidePassword==true?FluentSystemIcons.ic_fluent_eye_hide_filled:FluentSystemIcons.ic_fluent_eye_show_filled,color: Colors.grey.shade500,size: 15,)),
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
                        onTap: () {
                          if(_formKey.currentState!.validate()){
                            setState(() {
                              eMail = _emailController.text.trim();
                              passWord = _passwordController.text.trim();
                            });
                          }
                          login();
                        },
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
                    Get.to(()=>const Register());
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
