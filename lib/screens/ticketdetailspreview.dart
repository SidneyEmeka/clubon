import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/styles/stylings.dart';
import 'feedback.dart';

class Ticketdetailspreview extends StatefulWidget {
  final Map<String,dynamic> theEvent;
  const Ticketdetailspreview({super.key, required this.theEvent});

  @override
  State<Ticketdetailspreview> createState() => _TicketdetailspreviewState();
}

class _TicketdetailspreviewState extends State<Ticketdetailspreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Stylings.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Stylings.brown,
            size: 20,
          ),
        ),
        title: Text("Your Ticket",style: Stylings.titles.copyWith(fontSize: 15),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined,color: Colors.black, size: 20,))
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
            width: Get.width,
            height: Get.height*0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(widget.theEvent['imgUrl']),fit: BoxFit.cover)
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.8)
                  ),
                  child: Text("4 Days to go", style: Stylings.titles.copyWith(fontSize: 12),),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Event details",style: Stylings.titles.copyWith(fontSize: 13),),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Text("Join us for an enchanting evening at the annual Twilight Lantern Festival, a celebration of light, community, and creativity. As the sun sets over Willow Park, the festivities will begin with a serene lantern-making workshop where attendees of all ages can craft their own unique lanterns using a variety of materials and guided instructions.",style: Stylings.subTitles,),

          ),
          const SizedBox(height: 10,),
          //eveentsharee
          GestureDetector(
            onTap: ()async {
              await Share.share("https://Clubon.com/${widget.theEvent['title']}");
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.person_add_alt_outlined, color: Colors.black, size: 20,),
                  const SizedBox(width: 10,),
                  Text("Invite Friends",style: Stylings.titles.copyWith(fontSize: 12)),
                  const Expanded(child: SizedBox()),
                  const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 15,),
                ],
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Meet your host",style: Stylings.titles.copyWith(fontSize: 13),),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    widget.theEvent['pfp'],
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.theEvent['username'],style: Stylings.titles.copyWith(fontSize: 14)),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 15, color: Colors.orangeAccent,),
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 15, color: Colors.orangeAccent,),
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 15, color: Colors.orangeAccent,),
                        widget.theEvent['rating']==null?
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 15, color: Colors.orangeAccent,): const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 15, color: Colors.black12),
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 15, color: Colors.black12),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['rating']??"4.5",style: Stylings.titles.copyWith(fontSize: 12)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Where it will be",style: Stylings.titles.copyWith(fontSize: 12)),
                const SizedBox(height: 5),
                Text(widget.theEvent['direction']??"107, New Sean Close, The Club House Center",style: Stylings.subTitles),
                const SizedBox(height: 5),
                SizedBox(
                  width: Get.width,
                  height: Get.height*0.2,
                  child: Image.asset("assets/images/map.png",fit: BoxFit.cover,),
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Rules",style: Stylings.titles.copyWith(fontSize: 13),),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("${Stylings.imgPath}/dressicon.png", fit: BoxFit.contain,),
                        ),
                        const SizedBox(width: 10,),
                        Text("Dress Code: Smart and Glamorous",style: Stylings.subTitles)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/images/person.png", fit: BoxFit.contain,),
                        ),
                        const SizedBox(width: 10,),
                        Text("Minimum Age: 18",style: Stylings.subTitles)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("${Stylings.imgPath}/smoke.png", fit: BoxFit.contain,),
                        ), const SizedBox(width: 10,),
                        Text('Not permitted to smoke',style: Stylings.subTitles)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Options",style: Stylings.titles.copyWith(fontSize: 13),),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("${Stylings.imgPath}/lock.png", fit: BoxFit.contain,),
                        ),
                        const SizedBox(width: 10,),
                        Text("Got a code?",style: Stylings.subTitles)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_calendar_regular,size: 18, color: Colors.black,),
                        const SizedBox(width: 10,),
                        Text("Add to calendar",style: Stylings.subTitles)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Get.to(const Report());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 18,
                            height: 18,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("${Stylings.imgPath}/abt.png", fit: BoxFit.contain,),
                          ), const SizedBox(width: 10,),
                          Text('Need help?',style: Stylings.subTitles)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
