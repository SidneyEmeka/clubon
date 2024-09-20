import 'package:clubon/data/constantdata.dart';
import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/screens/feedbacksuccesspage.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  var feedBiz = Businness();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Feedback",
          style: Stylings.titles.copyWith(fontSize: 12),
        ),
        centerTitle: true,
      ),
      body: Obx(()=>Container(
        width: Get.size.width,
        height: Get.size.height,
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("What issue did you find ?",style: Stylings.titles.copyWith(fontSize: 11),),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...Clubon.reports.map((aReport){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: GestureDetector(
                          onTap: (){
                            feedBiz.reportId.value = aReport;
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: Get.size.width*0.8,
                                child: Text(aReport,style: Stylings.subTitles.copyWith(fontSize: 11),),
                              ),
                              feedBiz.reportId.value==aReport?Icon(FluentSystemIcons.ic_fluent_record_regular,color: Stylings.orange,size: 17,):const Icon(Icons.circle_outlined, size: 17, color: Colors.black54,)
                            ],
                          ),
                        ),
                      );
                    }),
                   feedBiz.reportId.value=="Others"? TextField(
                     cursorColor: Colors.grey.shade200,
                     onChanged: (value){
                       feedBiz.otherReport.value = value;
                     },
                      maxLines: 8,
                      style: Stylings.titles.copyWith(fontSize: 12),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "(Required)",
                          hintStyle: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.black54),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5))),
                    ):Container(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                feedBiz.reportId.value=="Others"&&feedBiz.otherReport.value.isEmpty? Get.snackbar("OTP",
                    "Your one time password is 83020",
                    titleText: Text("Invalid Feedback",style: Stylings.titles.copyWith(fontSize: 12),),
                    messageText: Text("Kindly choose the feedback you want to give\nEnsure you write a feedback if you selected others",style: Stylings.subTitles.copyWith(fontSize: 12),),
                    duration: const Duration(seconds: 2)):
                Get.to(const Feedbacksuccesspage());
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: feedBiz.reportId.value=="Others"&&feedBiz.otherReport.value.isEmpty?Colors.grey.shade200:Stylings.orange,
                ),
                width: Get.size.width,
                height: 40,

                child: Text("Submit",style: Stylings.titles.copyWith(fontSize: 11,color: feedBiz.reportId.value=="Others"&&feedBiz.otherReport.value.isEmpty?Colors.black54:Colors.white),),
              ),
            )
          ],
        ),
      ),)
       
    );
  }
}
