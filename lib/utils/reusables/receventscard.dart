import 'package:clubon/screens/buyticket.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../styles/stylings.dart';

class Receventscard extends StatelessWidget {
  final String pfp;
  final String username;
  final String imgUrl;
  final String title;
  final String date;
  final bool isFull;

  const Receventscard(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.date,
      required this.pfp,
      required this.username,this.isFull=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: isFull==false?size.width * 0.6:size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //event banner
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: isFull==false?size.height * 0.32:size.height * 0.48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imgUrl), fit: BoxFit.cover)),
            child: Container(
              height: size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.08),
                backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
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
                  Text(
                    username,
                    style: Stylings.titles
                        .copyWith(fontSize: 12, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          //title
          Container(
            margin: const EdgeInsets.only(left: 15,top: 10,bottom: 8),
            width: size.width * 0.8,
            child: Text(
              overflow: TextOverflow.ellipsis,
              title,
              style: Stylings.titles.copyWith(fontSize: 15),
            ),
          ),
          //time
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //time
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_calendar_regular,
                      color: Colors.black,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      date,
                      style: Stylings.subTitles,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //book
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(pfp), fit: BoxFit.cover)),
                      ),
                      Positioned(
                        left: 15,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/jlop.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(imgUrl),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("And others booked",style: Stylings.subTitles.copyWith(fontSize: 14),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
