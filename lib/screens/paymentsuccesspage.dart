import 'package:clubon/getxserver/businesslogic.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Paymentsuccesspage extends StatefulWidget {
  final Map<String,dynamic> booked;
  const Paymentsuccesspage({super.key, required this.booked});

  @override
  State<Paymentsuccesspage> createState() => _PaymentsuccesspageState();
}

class _PaymentsuccesspageState extends State<Paymentsuccesspage> {
  var finBiz = Businness();
  @override
  void initState() {
   Future.delayed(Duration(seconds: 3),(){
     finBiz.paymentStatus.value=true;
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          leading: Obx(()=>finBiz.paymentStatus.value==false?Container():IconButton(
            onPressed: () {
              Get.back();
            },
            icon: finBiz.paymentStatus.value==false?Container():const Icon(
              FluentSystemIcons.ic_fluent_ios_arrow_left_filled,
              size: 20,
              color: Colors.black,
            ),
          ),),
          title: Obx(()=>finBiz.paymentStatus.value==false?Container():Text(
            "Let's go have fun",
            style: Stylings.titles.copyWith(fontSize: 13),
          ),),
          centerTitle: true,
        ),
      body: Obx(()=>Center(child: finBiz.paymentStatus.value==false?CircularProgressIndicator(
        color: Stylings.orange,
        strokeWidth: 4,
        strokeCap: StrokeCap.round,
      ):
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(FluentSystemIcons.ic_fluent_checkmark_circle_regular,color: Colors.green,size: 100,),
            SizedBox(height: 10),
            Text("Thank you for booking",style: Stylings.titles.copyWith(fontSize: 12),),
            SizedBox(height: 20,),
            RichText(
              textAlign: TextAlign.center,
                text: TextSpan(
                children: [
                  TextSpan(
                      text: "You have successfully booked a ticket for ", style: Stylings.subTitles.copyWith(fontSize: 13)
                  ),
                  TextSpan(
                      text: widget.booked['title'], style: Stylings.titles.copyWith(fontSize: 12)
                  ),
                ]
            )),
            SizedBox(height: 80),
            GestureDetector(
              onTap: (){
               },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Stylings.orange,
                ),
                alignment: Alignment.center,
                width: Get.size.width,
                height:45,
                child: Text("View your ticket",style: Stylings.titles.copyWith(fontSize: 12, color: Colors.white),),
              ),
            )
          ],
        ),
      )
      )));
  }
}
