import 'package:barcode_widget/barcode_widget.dart';
import 'package:clubon/screens/ticketdetailspreview.dart';
import 'package:clubon/utils/reusables/layoutcalc.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../styles/stylings.dart';

class Ticketcard extends StatelessWidget {
  final Map<String,dynamic> theEvent;
  final String pfp;
  final String username;
  final String imgUrl;
  final String title;
  final String date;
  final String location;
  final String price;
  final bool isExpired;

  const Ticketcard({super.key, required this.theEvent, required this.pfp, required this.username, required this.imgUrl,required this.title, required this.date, required this.location, required this.price, this.isExpired=false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(Ticketdetailspreview(theEvent: theEvent,));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        width: Get.width,
        margin: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //info row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width*0.2,
                    height: Get.height*0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(imgUrl),fit: BoxFit.cover)
                    ),
                      ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(overflow: TextOverflow.ellipsis,title,style: Stylings.titles.copyWith(fontSize: 12),),
                          const SizedBox(height: 5,),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(FluentSystemIcons.ic_fluent_location_regular,size: 11,color: Colors.grey.shade500,),
                          const SizedBox(width: 2),
                          Text(location,style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade400),),
                    
                        ])
                        ],
                      ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            //price and dj
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.headphones_outlined,color: Colors.black,size: 17,),
                  const SizedBox(width: 10,),
                  Text(username,style: Stylings.titles.copyWith(fontSize: 11),),
                  const Expanded(child: SizedBox()),
                  Text("\$ $price.99",style: Stylings.titles.copyWith(fontSize: 11),),

                ],
              ),
            ),
            const SizedBox(height: 15,),
            //divider
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Stylings.bgColor,
                    borderRadius: const BorderRadius.horizontal(right: Radius.circular(20))
                  ),
                ),
                const Expanded(
                    child: Layoutcalc(randomDiv: 10, dashWidth: 5, theCol: Colors.black26,)),
                Container(
                  height: 25,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Stylings.bgColor,
                    borderRadius: const BorderRadius.horizontal(left: Radius.circular(20))
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            //date and time row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Date",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade400),),
                        const SizedBox(height: 5,),
                        Text(date,style: Stylings.titles.copyWith(fontSize: 10),),
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width*0.3,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                         height: 5,
                         width: 5,
                         decoration: const BoxDecoration(
                             color: Colors.black,
                            shape: BoxShape.circle),
                       ),
                       const Expanded(
                           child: Layoutcalc(randomDiv: 1, dashWidth: 1, theCol: Colors.black,)),
                       Container(
                         height: 5,
                         width: 5,
                         decoration: const BoxDecoration(
                             color: Colors.black,
                             shape: BoxShape.circle),
                       ),
                     ],
                   ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Time",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade400),),
                        const SizedBox(height: 5),
                        Text("10:00 PM",style: Stylings.titles.copyWith(fontSize: 10),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
          //barcode
            !isExpired?
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(color: Stylings.bgColor,thickness: 2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BarcodeWidget(data: "Clubon.com/tickets/eventId", barcode: Barcode.code128(),
                    drawText: false,
                    height: Get.height*0.06,),
                ),
              )
            ],
          ):Container()
          ],
        ),

      ),
    );
  }
}
