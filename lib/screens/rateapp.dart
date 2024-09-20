import 'package:clubon/homes/settings.dart';
import 'package:clubon/screens/feedbacksuccesspage.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Rateapp extends StatelessWidget {
  final double rate;
  const Rateapp({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
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
        title: Text("Feedback",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Thank you - anything to add?",style: Stylings.titles.copyWith(fontSize: 11),),
            RatingBar.builder(itemBuilder: (context, _)=>Icon(FluentSystemIcons.ic_fluent_star_filled,color: Stylings.orange,),
              onRatingUpdate: (rating){
              },
              initialRating: rate,
              unratedColor: Colors.grey.shade300,
              itemSize: 23,
              itemPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 1),),
            TextField(
              cursorColor: Colors.grey.shade200,
              onChanged: (value){
              },
              maxLines: 5,
              style: Stylings.titles.copyWith(fontSize: 12),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: "Let us know",
                  hintStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.black54),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5))),
            ),
            const Expanded(child: SizedBox()),
            GestureDetector(
              onTap: (){
                Get.to(()=>const Feedbacksuccesspage());
              },
              child: Container(
                alignment: Alignment.center,
                width: Get.width,
                height: 40,
                decoration: BoxDecoration(
                  color: Stylings.orange,
                  borderRadius: BorderRadius.circular(7)
                ),
                child: Text("Submit",style: Stylings.titles.copyWith(fontSize: 11,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
