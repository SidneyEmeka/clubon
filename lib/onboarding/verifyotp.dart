import 'package:clubon/onboarding/chooselocation.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:flutter/material.dart';

import '../utils/styles/stylings.dart';

class Verifyotp extends StatelessWidget {
  const Verifyotp({super.key});

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
          child: Icon(
            Icons.arrow_back_ios,
            color: Stylings.brown,
            size: 20,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height*0.1),
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
              "Please Verify Your Email",
              style: Stylings.titles.copyWith(fontSize: 20),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
              child: Text(
                  textAlign: TextAlign.center,
                  "We sent a code to your email please enter the code below ",
                  style: Stylings.body),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white70,
                    border: Border.all(
                      color: Colors.black38,
                    )),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Name";
                    }
                    return null;
                  },
                  //controller: _nameController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "Enter Code",
                      border: InputBorder.none),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return const Chooselocation();
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
                child: Text("Confirm", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.white),),

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
                  Text("Resend code in", style: Stylings.body),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("30 secs",
                      style: Stylings.titles
                          .copyWith(color: Stylings.orange, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
