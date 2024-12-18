import 'package:clubon/screens/buyticket.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../styles/stylings.dart';

class Eventcard extends StatelessWidget {
  final Map<String,dynamic> theEvent;
  final String pfp;
  final String username;
  final String imgUrl;
  final String comments;
  final String likes;
  final String title;
  final String date;
  final String location;
  final String price;
  const Eventcard({super.key, required this.imgUrl, required this.comments, required this.likes, required this.title, required this.date, required this.location, required this.price, required this.pfp, required this.username, required this.theEvent});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12.withOpacity(0.08),
            width: 2
          )
        )
      ),
      width: size.width,
      height: size.height*0.67,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //event banner
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: size.height*0.48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover)
            ),
            child: Container(
              height: size.height*0.08,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.02),
                backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          pfp,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(username,style: Stylings.titles.copyWith(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                  Icon(Icons.more_horiz,color: Colors.white,)
                ],
              ),
            ),
          ),
          //reactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //reactions
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_heart_regular,color: Colors.black, size: 20,),
                    SizedBox(width: 10,),
                    Icon(FluentSystemIcons.ic_fluent_chat_regular,color: Colors.black, size: 17,),
                    SizedBox(width: 10,),
                    Icon(FluentSystemIcons.ic_fluent_share_ios_regular,color: Colors.black, size: 17,),
                  ],
                ),
                //counts
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            Text("$comments Comments", style: Stylings.subTitles.copyWith(fontSize: 12),),
            const SizedBox(width: 13),
            Text("$likes Likes", style: Stylings.subTitles.copyWith(fontSize: 12),),
                  ],
                )
              ],
            ),
          ),
          //title
          Container(
            margin: const EdgeInsets.only(left: 17),
            width: size.width*0.8,
            child: Text(overflow: TextOverflow.ellipsis,
              title, style: Stylings.titles.copyWith(fontSize: 12),),
          ),
          //time and place
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //time
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_calendar_regular,color: Colors.black, size: 13,),
                   const SizedBox(width: 5,),
                   Text(date, style: Stylings.subTitles.copyWith(fontSize: 11),),
                    const SizedBox(width: 15),
                    const Icon(FluentSystemIcons.ic_fluent_location_regular,color: Colors.black, size: 13,),
                    const SizedBox(width: 5,),
                    Text(location, style: Stylings.subTitles.copyWith(fontSize: 11),),
                  ],
                ),
              ],
            ),
          ),
          //book
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               RichText(text: TextSpan(
                 children: [
                   TextSpan(
                     text: "\$$price", style: Stylings.titles.copyWith(fontSize: 17)
                   ),
                   TextSpan(
                       text: ".99", style: Stylings.titles.copyWith(fontSize: 12)
                   ),
                 ]
               )),
                  GestureDetector(
                     onTap: (){
                      Get.to(Buyticket(theEvent: theEvent));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Stylings.orange,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      width: size.width*0.4,
                      height: Get.height*0.045,
                      child: Text("Buy Ticket", style: Stylings.titles.copyWith(color: Colors.white, fontSize: 12),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
