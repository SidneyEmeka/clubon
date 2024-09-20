import 'package:clubon/data/constantdata.dart';
import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homepage.dart';
import 'package:clubon/utils/reusables/ticketcard.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Tickets extends StatelessWidget {
  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    var tickBiz = Businness();
    return Scaffold(
      backgroundColor: Stylings.bgColor,
     body: Obx(()=> Container(
         width: Get.size.width,
         height: Get.size.height,
         child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
                 width: Get.width,
                 height: Get.height*0.19,
                 color: Colors.white,
                 padding: const EdgeInsets.symmetric(vertical: 10),
                 child: SafeArea(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             IconButton(onPressed: (){
                               Get.to(Homepage());
                             }, icon: const Icon(Icons.arrow_back_ios,size: 15,color: Colors.black,)),
                             Text("Your tickets",style: Stylings.titles.copyWith(fontSize: 12),),
                           ],
                         ),
                       ),
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             GestureDetector(
                               onTap: () {
                                 tickBiz.ticketPage.value = "All";
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                 decoration: BoxDecoration(
                                     color: tickBiz.ticketPage.value == "All"
                                         ? Stylings.orange
                                         : Colors.white,
                                     borderRadius: BorderRadius.circular(20)),
                                 child: Text(
                                   "All bookings",
                                   style: Stylings.titles.copyWith(
                                       fontSize: 11,
                                       color:tickBiz.ticketPage.value == "All"
                                           ? Colors.white
                                           : Colors.black),
                                 ),
                               ),
                             ),
                             GestureDetector(
                               onTap: () {
                                 tickBiz.ticketPage.value = "UC";
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                 decoration: BoxDecoration(
                                     color: tickBiz.ticketPage.value == "UC"
                                         ? Stylings.orange
                                         : Colors.white,
                                     borderRadius: BorderRadius.circular(20)),
                                 child: Text(
                                   "Upcoming booking",
                                   style: Stylings.titles.copyWith(
                                       fontSize: 11,
                                       color: tickBiz.ticketPage.value == "UC"
                                           ? Colors.white
                                           : Colors.black),
                                 ),
                               ),
                             ),
                             GestureDetector(
                               onTap: () {
                                 tickBiz.ticketPage.value = "P";
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                 decoration: BoxDecoration(
                                     color: tickBiz.ticketPage.value == "P"
                                         ? Stylings.orange
                                         : Colors.white,
                                     borderRadius: BorderRadius.circular(20)),
                                 child: Text(
                                   "Past booking",
                                   style: Stylings.titles.copyWith(
                                       fontSize: 11,
                                       color: tickBiz.ticketPage.value == "P"
                                           ? Colors.white
                                           : Colors.black),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               const SizedBox(height: 15,),
                Expanded(child: SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: tickBiz.ticketPage.value=="All"?Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     ...Clubon.tonight.take(2).map((aTicket){
                       return Ticketcard(isExpired:true,theEvent: aTicket, pfp: aTicket['pfp'], username: aTicket['username'], imgUrl: aTicket['imgUrl'], title: aTicket['title'], date: aTicket['date'], location: aTicket['location'], price: aTicket['price']);
                     }),
                     ...Clubon.popular.take(3).map((aTicket){
                       return Ticketcard(theEvent: aTicket, pfp: aTicket['pfp'], username: aTicket['username'], imgUrl: aTicket['imgUrl'], title: aTicket['title'], date: aTicket['date'], location: aTicket['location'], price: aTicket['price']);
                     }),
                   ],
                 ):
                 tickBiz.ticketPage.value=="UC"?Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     ...Clubon.popular.take(3).map((aTicket){
                       return Ticketcard(theEvent: aTicket, pfp: aTicket['pfp'], username: aTicket['username'], imgUrl: aTicket['imgUrl'], title: aTicket['title'], date: aTicket['date'], location: aTicket['location'], price: aTicket['price']);
                     })
                   ],
                 ):Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     ...Clubon.tonight.take(2).map((aTicket){
                       return Ticketcard(isExpired:true,theEvent: aTicket, pfp: aTicket['pfp'], username: aTicket['username'], imgUrl: aTicket['imgUrl'], title: aTicket['title'], date: aTicket['date'], location: aTicket['location'], price: aTicket['price']);
                     })
                   ],
                 ),
               ))
             ]
         )))
    );
  }
}
