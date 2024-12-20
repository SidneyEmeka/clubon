import 'package:clubon/homes/settings.dart';
import 'package:clubon/onboarding/chooselocation.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Settingsotp extends StatefulWidget {
  const Settingsotp({super.key});

  @override
  State<Settingsotp> createState() => _SettingsotpState();
}

class _SettingsotpState extends State<Settingsotp> {
  @override
  void initState() {
   Future.delayed(const Duration(seconds: 1), (){
     Get.snackbar("OTP", "Your one time password is 83020",titleText: Text("OTP",style: Stylings.titles.copyWith(fontSize: 12),),
     messageText: Text("Your one time password is 83020",style: Stylings.subTitles.copyWith(fontSize: 12)),duration: const Duration(seconds: 5));
   });
    super.initState();
  }

  TextEditingController _otp = TextEditingController();
  bool invalid = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
          Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        width: size.width,
        height: size.height*0.6,
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
              "Please verify your email",
              style: Stylings.titles.copyWith(fontSize: 15),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Text(
                  textAlign: TextAlign.center,
                  "We just sent you an OTP please enter the code below to continue",
                  style: Stylings.subTitles.copyWith(fontSize: 11)),
            ),
            const Expanded(child: SizedBox()),
            invalid?Padding(
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
                    width: 5,
                  ),
                  Text(
                    "Invalid code",
                    style: Stylings.subTitles
                        .copyWith(color: Stylings.orange, fontSize: 12),
                  ),
                ],
              ),
            ):Container(),
            TextField(
              controller: _otp,
              cursorColor: Stylings.bgColor,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Code",
                  labelStyle: Stylings.subTitles.copyWith(fontSize: 12),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                ),
              ),

            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                if(int.parse(_otp.text)==83020){
                  Get.defaultDialog(
                    radius: 10,
                    titlePadding: const EdgeInsets.only(top: 25),
                    contentPadding: const EdgeInsets.only(bottom: 20,top: 15,left: 15,right: 15),
                    title: "Email Verification",
                    titleStyle: Stylings.titles.copyWith(fontSize: 14),
                    middleText: "A verification link was sent to your email, kindly click the link to verify your email",
                    middleTextStyle: Stylings.subTitles.copyWith(fontSize: 12),
                    backgroundColor: Colors.white,
                    confirm: GestureDetector(
                      onTap: (){
                        Get.to(()=>const Settingspref());
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black26)
                          ),
                          width: 100,
                          height: Get.size.height*0.04,
                          child: Text("Continue", style: Stylings.titles.copyWith(fontSize: 12),),
                        ),
                      ),
                    ),


                  );
                }
                else {
                  invalid = true;
                  setState(() {
                  });
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                height: 45,
                decoration: BoxDecoration(
                    color: Stylings.orange,
                    borderRadius: BorderRadius.circular(7)),
                child: Text("Confirm", style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),

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
                  Text("Resend code in", style: Stylings.subTitles.copyWith(fontSize: 10)),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("30 secs",
                      style: Stylings.subTitles
                          .copyWith(color: Stylings.orange, fontSize: 11)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
