import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubon/auths/authservice.dart';
import 'package:clubon/onboarding/loginpage.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:clubon/onboarding/verifyotp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
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

  Future<void> _chooseDob() async {
    DateTime? _picked = await showDatePicker(
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        builder: (context, child)=> Theme(
            data: ThemeData().copyWith(
              colorScheme: ColorScheme.light(
                primary: Stylings.orange,
              ),
            ),
            child: child!),
        context: context,initialDate: DateTime.now(), firstDate: DateTime(1960), lastDate: DateTime.now());
    if(_picked!=null){
      setState(() {
        dob = _picked.toString().split(" ")[0];
      });
    }
  }
  String dob = "Date of Birth";
 String fname = '', lname = '', email = '', password = '', confirmPass = '';

  String _error = '';
  bool isLoading = false;
  bool hidePassword = true;

  final _fnameco = TextEditingController();
  final _lnameco = TextEditingController();
  final _emailco = TextEditingController();
  final _passwordco = TextEditingController();
  final _confirmco = TextEditingController();

  void register() async{
    if(password!=confirmPass){
      setState(() {
        _error = "Password doesn't match";
      });
    }
    else if(password.isNotEmpty&&confirmPass.isNotEmpty&&email.isNotEmpty&&fname.isNotEmpty&&lname.isNotEmpty){
      String fullName = "$fname $lname";
      try{
        setState(() {
          isLoading=true;
        });
        UserCredential credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
       await FirebaseFirestore.instance.collection("users").doc(credential.user!.uid).set({
        'firstname': fname,
        'lastname' : lname,
         'name' : fullName,
        'email': email,
        'dob':dob,
        'uid':credential.user!.uid,
      });
       Future.delayed(const Duration(seconds: 1),(){
         setState(() {
           isLoading=false;
         });
         Get.offAll(()=>const Verifyotp());
       });
     //   print("Successful");
      }on FirebaseAuthException catch(e){
        if (e.code=='weak-password'){setState(() {
          _error = "Password too weak";
        });}
        else if(e.code == 'email-already-in-use'){
          setState(() {
            _error= "The email already exists";
          });
        }
      }
    }
    else{
      setState(() {
        _error = "Something went wrong let's try again";
      });
    }
  }
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
       // padding: const EdgeInsets.symmetric(vertical: 20),
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isLoading==true? LinearProgressIndicator(color: Stylings.orange,borderRadius: BorderRadius.circular(20),):Container(),
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
         _error!=""? Padding(
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
                    _error,
                    style: Stylings.subTitles
                        .copyWith(color: Stylings.orange, fontSize: 10),
                  ),
                ],
              ),
            ):Container(),
            Expanded(
                child: SingleChildScrollView(
                  reverse: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.grey.shade500),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                        controller: _fnameco,
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
                      child: TextFormField(
                        style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.grey.shade500),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                        controller: _lnameco,
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
                      child: TextFormField(
                        style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.grey.shade500),
                        validator: (value){
                          if(value==null||value.isEmpty||!value.contains(".com")){
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        controller: _emailco,
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
                    //dob
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child:  GestureDetector(
                        onTap: _chooseDob,
                        child: Container(
                            width: Get.width,
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: Colors.black,width: 0.5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(dob,style: Stylings.subTitles.copyWith(fontSize: 12,color:Colors.grey.shade500),),
                                const Expanded(child: SizedBox()),
                                Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: 15,)
                              ],
                            )
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        obscureText: hidePassword,
                        style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.grey.shade500),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Please enter password';
                          }
                          return null;
                        },
                        controller: _passwordco,
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
                      child: TextFormField(
                        obscureText: hidePassword,
                        style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.grey.shade500),
                        validator: (value){
                          if(value==null||value.isEmpty||confirmPass!=password){
                            return 'Password doesn\'t match';
                          }
                          return null;
                        },
                        controller: _confirmco,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.grey.shade500,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide(color: Stylings.orange)
                            ),
                            suffixIcon: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    hidePassword==true?hidePassword=false:hidePassword=true;
                                  });
                                },child: Icon(hidePassword==true?FluentSystemIcons.ic_fluent_eye_hide_filled:FluentSystemIcons.ic_fluent_eye_show_filled,color: Colors.grey.shade500,size: 15,)),
                          errorStyle: Stylings.subTitles.copyWith(fontSize: 10,color: Stylings.orange),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide(color: Stylings.orange)
                            ),
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
                      onTap: (){
                        if(_formKey.currentState!.validate()){
                          setState(() {
                            fname = _fnameco.text.trim();
                            lname = _lnameco.text.trim();
                            email = _emailco.text.trim();
                            password = _passwordco.text.trim();
                            confirmPass =_confirmco.text.trim();
                          });
                          register();
                        }
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Already have an account?", style: Stylings.subTitles.copyWith(fontSize: 10)),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(()=>const Loginpage());
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
              ),
            ))
          ],
        ),
      ),
    );
  }
}
