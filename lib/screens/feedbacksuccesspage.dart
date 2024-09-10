import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homepage.dart';
import 'package:clubon/homes/timeline.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../utils/styles/stylings.dart';

class Feedbacksuccesspage extends StatefulWidget {
  const Feedbacksuccesspage({super.key});

  @override
  State<Feedbacksuccesspage> createState() => _FeedbacksuccesspageState();
}

class _FeedbacksuccesspageState extends State<Feedbacksuccesspage> {
  var feedSucBiz = Businness();
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1),(){
      feedSucBiz.feedbackStatus.value=true;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          leading: Obx(()=>feedSucBiz.feedbackStatus.value==false?Container():IconButton(
            onPressed: () {
              Get.back();
            },
            icon: feedSucBiz.feedbackStatus.value==false?Container():const Icon(
              FluentSystemIcons.ic_fluent_ios_arrow_left_filled,
              size: 20,
              color: Colors.black,
            ),
          ),),
          title: Obx(()=>feedSucBiz.feedbackStatus.value==false?Container():Text(
            "Feedback",
            style: Stylings.titles.copyWith(fontSize: 13),
          ),),
          centerTitle: true,
        ),
        body: Obx(()=>Center(child: feedSucBiz.feedbackStatus.value==false?CircularProgressIndicator(
          color: Stylings.orange,
          strokeWidth: 4,
          strokeCap: StrokeCap.round,
        ):
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(FluentSystemIcons.ic_fluent_checkmark_circle_regular,color: Colors.green,size: 100,),
              SizedBox(height: 10),
              Text("Thanks for your feedback",style: Stylings.titles.copyWith(fontSize: 12),),
              SizedBox(height: 20,),
             Text("Your feedback will help us improve our suggested search terms", textAlign: TextAlign.center,style: Stylings.subTitles.copyWith(fontSize: 12),),
              SizedBox(height: 80),
              GestureDetector(
                onTap: (){
                  Get.to(Homepage());
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
                  child: Text("Done",style: Stylings.titles.copyWith(fontSize: 12, color: Colors.white),),
                ),
              )
            ],
          ),
        )
        )));
  }
}
