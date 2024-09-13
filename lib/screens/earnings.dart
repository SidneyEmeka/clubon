import 'package:clubon/screens/earnbreakdown.dart';
import 'package:clubon/screens/payout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Earnings extends StatelessWidget {
  const Earnings({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text("Earnings",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: Container(
         margin: const EdgeInsets.symmetric(vertical: 15),
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Amount you have earned", style: Stylings.titles.copyWith(fontSize: 11),),
            const SizedBox(height: 4,),
            Text("\$32,000", style: Stylings.titles.copyWith(fontSize: 25),),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(FluentSystemIcons.ic_fluent_bank_filled,size: 12,color: Colors.orangeAccent,),
                 const SizedBox(width: 8,),
                 Text("320,000,000", style: Stylings.titles.copyWith(fontSize: 10),),
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.29,
                    height: Get.width*0.21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylings.bgColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "40M",
                          style: Stylings.titles.copyWith(fontSize: 12),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "Post views",
                          style: Stylings.titles.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.29,
                    height: Get.width*0.21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylings.bgColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "3631",
                          style: Stylings.titles.copyWith(fontSize: 12),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "Net followers",
                          style: Stylings.titles.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.29,
                    height: Get.width*0.21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylings.bgColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "9M",
                          style: Stylings.titles.copyWith(fontSize: 12),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "Likes",
                          style: Stylings.titles.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //earnings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){Get.to(()=>const Earnbreakdown(title: 'Your latest live', total: '2,000', coins: "20,000",));},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                      alignment: Alignment.center,
                      width: Get.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(5)
                          ),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 20,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "Your latest live",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$2,000",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black87,),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){Get.to(()=>const Earnbreakdown(title: 'This week', total: '8,500', coins: "10,000",));},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                      alignment: Alignment.center,
                      width: Get.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),

                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 20,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "This week",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$8,500",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black87,),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){Get.to(()=>const Earnbreakdown(title: 'This month', total: '14,000', coins: '40,000',));},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                      alignment: Alignment.center,
                      width: Get.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),

                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 20,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "This month",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$14,000",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black87,),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){Get.to(()=>const Earnbreakdown(title: 'Last payout', total: '8,700.67', coins: '3,000,000',));},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                      alignment: Alignment.center,
                      width: Get.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(5)
                          ),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 20,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "Last payout",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$8,700.67",
                            style: Stylings.titles.copyWith(fontSize: 12,color: Colors.black87,),
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black87,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 10),
              child: Text("You can only withdraw once every 30 days. Your next withdrawal is in 2 days time.", style: Stylings.titles.copyWith(fontSize: 10,color: Colors.black26),),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> const Payout());
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
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
