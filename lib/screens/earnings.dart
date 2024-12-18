import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homepage.dart';
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
    var earnBiz = Businness();
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
            size: 17,
          ),
        ),
        title: Text("Earnings",style: Stylings.titles.copyWith(fontSize: 11),),
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
            Get.arguments!=0? Text("\$${earnBiz.totalEarning.value==32000?"32,000":"0.00"}", style: Stylings.titles.copyWith(fontSize: 23),):Text("\$0.00", style: Stylings.titles.copyWith(fontSize: 23),),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(FluentSystemIcons.ic_fluent_bank_filled,size: 12,color: Colors.orangeAccent,),
                 const SizedBox(width: 8,),
                Get.arguments!=0?  Text(earnBiz.totalPoints.value==320000000?"320,000,000":"0", style: Stylings.titles.copyWith(fontSize: 10),):Text("0", style: Stylings.titles.copyWith(fontSize: 10),),
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
                          style: Stylings.titles.copyWith(fontSize: 11),
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
                          style: Stylings.titles.copyWith(fontSize: 11),
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
                          style: Stylings.titles.copyWith(fontSize: 11),
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
            Get.arguments==0?Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                  decoration: BoxDecoration(
                    color: Stylings.bgColor,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  height: Get.height*0.1,
                  width: Get.width,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text("No Gifting History",style: Stylings.titles.copyWith(fontSize: 11),),
                      Expanded(child: SizedBox()),
                      Text("No one has gifted you yet. Go live to start earning",textAlign: TextAlign.center,style: Stylings.titles.copyWith(fontSize: 11,color: Colors.grey.shade400),),
                    ],
                  ),
                ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=> const Homepage());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: Get.width,
                      height: Get.height*0.05,
                      decoration: BoxDecoration(
                          color: Stylings.orange,
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Text("Go live",style: Stylings.titles.copyWith(fontSize: 11,color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ):Padding(
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
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 17,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "Your latest live",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$${earnBiz.latestLive.value==2000?"2,000":"0.0"}",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
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
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 17,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "This week",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$${earnBiz.thisWeek.value==8500?"8,500":"0.0"}",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
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
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 17,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "This month",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$${earnBiz.thisMonth.value==14000?"14,000":"0.0"}",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
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
                          const Icon(FluentSystemIcons.ic_fluent_payment_regular,size: 17,color: Colors.black87,),
                          const SizedBox(width: 10,),
                          Text(
                            "Last payout",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            "\$${earnBiz.lastPayout.value==8700.67?"8,700.67":"0.0"}",
                            style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black87,),
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
            Get.arguments==0?Container():GestureDetector(
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
                  borderRadius: BorderRadius.circular(7)
                ),
                child: Text("Request payout",style: Stylings.titles.copyWith(fontSize: 11,color: Colors.white),),
              ),
            ),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
