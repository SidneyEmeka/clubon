import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/screens/paymentsuccesspage.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Payment extends StatefulWidget {
  final Map<String, dynamic> booking;

  const Payment({super.key, required this.booking});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  var payBiz = Businness();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              FluentSystemIcons.ic_fluent_ios_arrow_left_filled,
              size: 17,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Payment",
            style: Stylings.titles.copyWith(fontSize: 12),
          ),
          centerTitle: true,
        ),
        body: Obx(() => SizedBox(
              width: Get.size.width,
              height: Get.size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      payBiz.cardType.value = "Card";
                    },
                    child: Container(
                      width: Get.size.width,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: payBiz.cardType.value == "Card"
                                ? Stylings.orange
                                : Colors.black12.withOpacity(0.2),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Pay with card",
                            style: Stylings.titles.copyWith(fontSize: 12),
                          ),
                          payBiz.cardType.value == "Card"
                              ? Icon(
                                  Icons.check_circle_rounded,
                                  color: Stylings.orange,
                                  size: 17,
                                )
                              : const Icon(
                                  Icons.circle_outlined,
                                  color: Colors.black12,
                                  size: 17,
                                ),
                        ],
                      ),
                    ),
                  ),
                  payBiz.cardType.value=="Card"?
                  //card details
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Card number",
                              style: Stylings.titles.copyWith(fontSize: 11),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              width: Get.width,
                              height: Get.height*0.06,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white70,
                                  border: Border.all(
                                    color: Colors.black38,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      cursorColor: Colors.grey.shade500,
                                      cursorHeight: 20,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please Enter Name";
                                        }
                                        return null;
                                      },
                                      //controller: _nameController,
                                      decoration: const InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(left: 20),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    width: 100,
                                    child:
                                        Image.asset("assets/images/card.png"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expiry",
                                  style: Stylings.titles.copyWith(fontSize: 11),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.size.width * 0.4,
                                  height: Get.height*0.06,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white70,
                                      border: Border.all(
                                        color: Colors.black38,
                                      )),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.grey.shade500,
                                    cursorHeight: 20,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Name";
                                      }
                                      return null;
                                    },
                                    //controller: _nameController,
                                    decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "CVC",
                                  style: Stylings.titles.copyWith(fontSize: 11),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.size.width * 0.4,
                                  height: Get.height*0.06,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white70,
                                      border: Border.all(
                                        color: Colors.black38,
                                      )),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.grey.shade500,
                                    cursorHeight: 20,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Name";
                                      }
                                      return null;
                                    },
                                    //controller: _nameController,
                                    decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //toggle
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white70,
                              border: Border.all(
                                color: Colors.black38,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text(
                                "Save this card for future transactions",
                                style: Stylings.titles.copyWith(fontSize: 11),
                              )),
                              Switch(
                                value: payBiz.saveCard.value,
                                onChanged: (value) {
                                  if(payBiz.saveCard.value==false) {
                                    payBiz.saveCard.value=true;
                                  } else{payBiz.saveCard.value=false;}
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Colors.green,
                                inactiveTrackColor: Colors.black12,
                                inactiveThumbColor: Colors.white,
                                trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                                  return Colors.transparent; // Use the default color.
                                }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ): Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      payBiz.cardType.value = "Apple";
                    },
                    child: Container(
                      width: Get.size.width,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: payBiz.cardType.value == "Apple"
                                ? Stylings.orange
                                : Colors.black12.withOpacity(0.2),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Apple Pay",
                            style: Stylings.titles.copyWith(fontSize: 12),
                          ),
                          payBiz.cardType.value == "Apple"
                              ? Icon(
                                  Icons.check_circle_rounded,
                                  color: Stylings.orange,
                                  size: 17,
                                )
                              : const Icon(
                                  Icons.circle_outlined,
                                  color: Colors.black12,
                                  size: 17,
                                ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>Paymentsuccesspage(booked: widget.booking,),arguments: Get.arguments);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Stylings.orange,
                      ),
                      alignment: Alignment.center,
                      width: Get.size.width,
                      height:45,
                      child: Text("Pay \$${Get.arguments.toStringAsFixed(2)}",style: Stylings.titles.copyWith(fontSize: 11, color: Colors.white),),
                    ),
                  )
                ],
              ),
            )));
  }
}
