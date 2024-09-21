import 'dart:ui';

import 'package:clubon/homes/settings.dart';
import 'package:clubon/utils/reusables/bnavmorph.dart';
import 'package:clubon/utils/reusables/commenttile.dart';
import 'package:clubon/utils/reusables/glassmorph.dart';
import 'package:clubon/utils/reusables/locheader.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import '../getxserver/businesslogic.dart';
import '../utils/styles/stylings.dart';
import 'filter.dart';

class Live extends StatefulWidget {
  const Live({super.key});

  @override
  State<Live> createState() => _LiveState();
}

class _LiveState extends State<Live> {
  final VideoPlayerController vpc = VideoPlayerController.asset("assets/images/ama.mp4");
  ChewieController? chewieController;

  @override
  void initState() {
    chewieController = ChewieController(videoPlayerController: vpc,
    aspectRatio: Get.width/Get.height,
    autoPlay: true,
    looping: true,
    autoInitialize: true,
    showControls: false);
    super.initState();
  }

  @override
  void dispose() {
    vpc.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.black87,
        child: Stack(
          children: [
            //Positioned.fill(child: Container(color: Colors.black45,)),
           Positioned.fill(child:Chewie(controller: chewieController!)),
            //header
            SafeArea(child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: Get.width,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){Get.back();},child: const Icon(Icons.arrow_back_ios,size: 17,color: Colors.white,)),
                  const SizedBox(width: 5,),
                  //location
                  GestureDetector(
                    onTap: (){
                      Get.to(()=> const Filter());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_location_regular,size: 17,color: Colors.white,),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Obx(()=> Text(Get.find<Businness>().location.value, style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.white),),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  //live
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(()=> const Live());
                        },
                        child: Glassmorph(
                          blur: 20,
                          opacity: 0.2,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(FluentSystemIcons.ic_fluent_record_regular, color: Stylings.orange, size: 12,),
                                const SizedBox(width: 5,),
                                Text("Live", style: Stylings.titles.copyWith(fontSize: 10,color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>const Settingspref());
                        },
                        child:  const Icon(FluentSystemIcons.ic_fluent_settings_dev_regular,size: 20,color: Colors.white,),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            //down
            Positioned(
              bottom: 10,
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //left
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         height: 200,
                         child: SingleChildScrollView(
                           reverse: false,
                           scrollDirection: Axis.vertical,
                           child: Obx(()=>Column(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               ...Get.find<Businness>().liveComments.map((aC){
                                 return Commenttile(imgUrl: aC['imgUrl'].toString(), name: aC['name'].toString(), comm: aC['comm'].toString(),);
                               })
                             ],
                           ),)
                         ),
                       ),
                       const SizedBox(height: 20,),
                       //host
                       Container(
                         alignment: Alignment.centerLeft,
                         width: Get.width*0.8,
                         height: 40,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(7),
                             color: Colors.transparent
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               width: 30,
                               height: 30,
                               decoration: const BoxDecoration(
                                 shape: BoxShape.circle,
                               ),
                               child: Image.asset(
                                 "assets/images/clock.png",
                                 fit: BoxFit.cover,
                               ),
                             ),
                             const SizedBox(width: 8,),
                             Obx(()=>Text(Get.find<Businness>().firename.value,style: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.white),)),
                             const SizedBox(width: 8,),
                             Container(
                               alignment: Alignment.center,
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               height: 17,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   border: Border.all(color:Colors.white),

                               ),
                               child: Text("Follow",style: Stylings.subTitles.copyWith(fontSize: 8,color: Colors.white),),
                             ),
                           ],
                         ),
                       ),
                       const SizedBox(height: 15),
                       //buy
                       Container(
                         alignment: Alignment.center,
                         width: Get.width*0.75,
                         height: 40,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(7),
                           color: Stylings.orange
                         ),
                         child: Text("Buy Ticket - From \$25",style: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.white),),
                       ),
                const SizedBox(height: 5,),
                //comment
                ClipRRect(
                  child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      width: Get.width*0.75,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          border: Border.all(width: 1.5,color: Colors.white.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: TextField(
                        cursorColor: Colors.grey.shade200,
                        onChanged: (value){
                        },
                        style: Stylings.titles.copyWith(fontSize: 12),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            hintText: "Comment",
                            suffixIcon: const Icon(FluentSystemIcons.ic_fluent_emoji_regular,size: 20,color: Colors.white,),
                            hintStyle: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),),
                ),
                     ],
                   ),
                    //right
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(FluentSystemIcons.ic_fluent_chat_filled,color: Colors.white,size: 20,),
                            const SizedBox(height: 1.5,),
                            Text("282",style: Stylings.titles.copyWith(fontSize: 8,color: Colors.white),)
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(FluentSystemIcons.ic_fluent_send_filled,color: Colors.white,size: 18,),
                            const SizedBox(height: 1.5,),
                            Text("3.8K",style: Stylings.titles.copyWith(fontSize: 8,color: Colors.white),)
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(FluentSystemIcons.ic_fluent_heart_filled,color: Colors.white,size: 20,),
                            const SizedBox(height: 1.5,),
                            Text("343K",style: Stylings.titles.copyWith(fontSize: 8,color: Colors.white),)
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(FluentSystemIcons.ic_fluent_gift_regular,color: Colors.white,size: 20,),
                            const SizedBox(height: 1.5,),
                            Text("Gift",style: Stylings.titles.copyWith(fontSize: 8,color: Colors.white),)
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(FluentSystemIcons.ic_fluent_arrow_up_circle_regular,color: Colors.white,size: 18,),
                            const SizedBox(height: 1.5,),
                            Text("Details",style: Stylings.titles.copyWith(fontSize: 8,color: Colors.white),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
