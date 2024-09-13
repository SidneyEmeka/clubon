import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/screens/addbankacc.dart';
import 'package:clubon/screens/earnings.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Payout extends StatelessWidget {
  const Payout({super.key});

  @override
  Widget build(BuildContext context) {
    var moneyBiz = Businness();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        shape: Border(
            bottom: BorderSide(
                color: Colors.grey.shade100
            )
        ),
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
        title: Text("Payout",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body:   Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //us
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Amount to withdraw",style: Stylings.titles.copyWith(fontSize: 12),),
                  Text("Amount exceed balance",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.red),),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey.shade300
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 42,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(image: AssetImage("assets/images/us.jpeg"),fit: BoxFit.cover)
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("USD",style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height: 3),
                      RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Balance: ",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade500)),
                            TextSpan(text: " 32,000 USD",style: Stylings.titles.copyWith(fontSize:9,)),
                          ]
                      ))
                    ],
                  ),
                  const SizedBox(width: 50),
                  Expanded(child: TextField(
                    textAlign: TextAlign.end,
                    style: Stylings.titles.copyWith(fontSize: 15),
                    cursorColor: Colors.black45,
                    keyboardType: TextInputType.number,

                    decoration: const InputDecoration(
                        border: InputBorder.none
                    ),
                  ))
                ],
              ),
            ),
            //icon
            Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                  color: Stylings.bgColor,
                  shape: BoxShape.circle
              ),
              child: Transform.rotate(angle: 3.14159/2,
                  child: Icon(Icons.compare_arrows_outlined,size: 15,color: Stylings.orange,)),
            ),
            //to
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("You will receive",style: Stylings.titles.copyWith(fontSize: 12),),
                  Text("1 USD = 1.2 GBP",style: Stylings.titles.copyWith(fontSize: 11),),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey.shade300
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 42,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(image: AssetImage("assets/images/brt.png"),fit: BoxFit.cover)
                    ),
                  ),
                  const SizedBox(width: 5),
                  DropdownButton(
                      padding: const EdgeInsets.only(left: 8),
                      menuMaxHeight: Get.height * 0.2,
                      borderRadius: BorderRadius.circular(10),
                      value: "GBP",
                      iconEnabledColor: Colors.black,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp,size: 17,color: Colors.black,),
                      underline: const SizedBox(),
                      items: [
                        ...moneyBiz.countries.map((aState) {
                          return DropdownMenuItem(
                              value: aState,
                              child: Text(
                                aState,
                                style: Stylings.titles.copyWith(fontSize: 12),
                              ));
                        })
                      ],
                      onChanged: (value) {
                      }),
                  const SizedBox(width: 50),
                  const Expanded(child:SizedBox()),
                  Text("3,000",style: Stylings.titles.copyWith(fontSize: 15),)
                ],
              ),
            ),
            //accts
            GestureDetector(
              onTap: (){
                Get.to(()=>const Addbankacc());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 19),
                width: Get.width,
                decoration: BoxDecoration(
                    color: Stylings.bgColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Add Account",style: Stylings.titles.copyWith(fontSize: 12),),
                    const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,)
                  ],
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            GestureDetector(
              onTap: (){
                if(moneyBiz.bankAccs.isEmpty)
                  {
                   Get.snackbar("Account Details", "Kindly add a payment account of your choice");
                  }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                alignment: Alignment.center,
                width: Get.width,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                    color: Stylings.orange,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Request payout",style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Get.to(()=>const Earnings());
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                alignment: Alignment.center,
                width: Get.width,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                    color: Stylings.bgColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Cancel",style: Stylings.titles.copyWith(fontSize: 12),),
              ),
            ),
          ],
        ),
      )
    );
  }
}
