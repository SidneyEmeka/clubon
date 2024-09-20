import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homes/tickets.dart';
import 'package:clubon/screens/earnings.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Payoutsuccess extends StatefulWidget {
  const Payoutsuccess({super.key,});

  @override
  State<Payoutsuccess> createState() => _PayoutsuccessState();
}

class _PayoutsuccessState extends State<Payoutsuccess> {
  var withBiz = Businness();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      withBiz.withdrawalStatus.value=true;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(()=>Center(child: withBiz.withdrawalStatus.value==false?CircularProgressIndicator(
          color: Stylings.orange,
          strokeWidth: 4,
          strokeCap: StrokeCap.round,
        ):
        Container(
          height: Get.height*0.7,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const  Expanded(flex:1,child: SizedBox()),
              const Icon(FluentSystemIcons.ic_fluent_checkmark_circle_regular,color: Colors.green,size: 90,),
              const SizedBox(height: 10),
              Text("Payout complete",style: Stylings.titles.copyWith(fontSize: 12),),
              const SizedBox(height: 15,),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Your payout of ", style: Stylings.subTitles.copyWith(fontSize: 11)
                        ),
                        TextSpan(
                            text: "${Get.arguments["amount"]} ${Get.arguments["currency"]}", style: Stylings.titles.copyWith(fontSize: 11)
                        ),
                        TextSpan(
                            text: " to", style: Stylings.subTitles.copyWith(fontSize: 11)
                        ),
                        TextSpan(
                            text: " Your account", style: Stylings.titles.copyWith(fontSize: 11)
                        ),
                        TextSpan(
                            text: " has been successfully sent", style: Stylings.subTitles.copyWith(fontSize: 11)
                        ),
                      ]
                  )),
              const  Expanded(flex:2,child: SizedBox()),
              GestureDetector(
                onTap: (){
                  Get.to(const Earnings(),arguments: 0);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Stylings.orange,
                  ),
                  alignment: Alignment.center,
                  width: Get.size.width,
                  height:45,
                  child: Text("Done",style: Stylings.titles.copyWith(fontSize: 11, color: Colors.white),),
                ),
              )
            ],
          ),
        )
        )));
  }
}
