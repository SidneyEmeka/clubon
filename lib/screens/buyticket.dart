import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homepage.dart';
import 'package:clubon/onboarding/chooselocation.dart';
import 'package:clubon/screens/payment.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/styles/stylings.dart';
import 'feedback.dart';

class Buyticket extends StatefulWidget {
  final Map<String,dynamic> theEvent;
  const Buyticket({super.key, required this.theEvent});

  @override
  State<Buyticket> createState() => _BuyticketState();
}

class _BuyticketState extends State<Buyticket> {
  @override
  void initState() {
    business.ticketPrice.value=double.parse("${widget.theEvent['price']}.99");
    super.initState();
  }
var business = Businness();
Future _dispayBottomSheet() {
    return showModalBottomSheet(context: context,
        backgroundColor: Colors.white,
        enableDrag: true,
        builder: (_){
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: Get.size.width,
            height: Get.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(()=>Container(
                  width: Get.size.width,
                  margin: const EdgeInsets.only(top: 15,bottom: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black12.withOpacity(0.05),
                        ),
                       )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_ticket_regular, size: 20, color: Colors.black,),
                      const SizedBox(width: 20,),
                      Text(business.ticketType.toString(),style: Stylings.titles.copyWith(fontSize: 12),),
                      const Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: SizedBox(
                          height: 17,
                          width: 17,
                          child: Image.asset("${Stylings.imgPath}/bad.png"),
                        ),
                      ),
                    ],
                  ),
                ),),
                //regular
                Obx(()=>GestureDetector(
                  onTap: (){
                    business.ticketType.value = "Regular";
                    business.ticketPrice.value=double.parse("${widget.theEvent['price']}.99");
                  },
                  child: Container(
                    width: Get.size.width,
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: business.ticketType.value=="Regular"?Stylings.orange:Colors.black12.withOpacity(0.05),
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Regular  (\$${widget.theEvent['price']}.99)",style: Stylings.titles.copyWith(fontSize: 12),),
                        business.ticketType.value=="Regular"?
                        Icon(
                          Icons.check_circle_rounded,
                          color: Stylings.orange,
                          size: 17,
                        ):const Icon(
                          Icons.circle_outlined,
                          color: Colors.black12,
                          size: 17,
                        ),


                      ],
                    ),
                  ),
                ),),
                //Vip
                Obx(()=>GestureDetector(
                  onTap: (){
                    business.ticketType.value="VIP";
                    business.ticketPrice.value=(10+double.parse("${widget.theEvent['price']}.99"));
                  },
                  child: Container(
                    width: Get.size.width,
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: business.ticketType.value=="VIP"?Stylings.orange:Colors.black12.withOpacity(0.05),
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("VIP  (\$${int.parse(widget.theEvent['price'])+10}.99)",style: Stylings.titles.copyWith(fontSize: 12),),
                        business.ticketType.value=="VIP"?
                        Icon(
                          Icons.check_circle_rounded,
                          color: Stylings.orange,
                          size: 17,
                        ):const Icon(
                          Icons.circle_outlined,
                          color: Colors.black12,
                          size: 17,
                        ),


                      ],
                    ),
                  ),
                ),),
                //MVP
                Obx(()=>GestureDetector(
                  onTap: (){
                    business.ticketType.value="MVP";
                    business.ticketPrice.value=(20+double.parse("${widget.theEvent['price']}.99"));
                  },
                  child: Container(
                    width: Get.size.width,
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: business.ticketType.value=="MVP"?Stylings.orange:Colors.black12.withOpacity(0.05),
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("MVP  (\$${int.parse(widget.theEvent['price'])+20}.99)",style: Stylings.titles.copyWith(fontSize: 12),),
                        business.ticketType.value=="MVP"?
                        Icon(
                          Icons.check_circle_rounded,
                          color: Stylings.orange,
                          size: 17,
                        ):const Icon(
                          Icons.circle_outlined,
                          color: Colors.black12,
                          size: 17,
                        ),


                      ],
                    ),
                  ),
                ),),
                //How many
                Expanded(
                  child: Container(
                    height: Get.size.height*0.08,
                    width: Get.size.width*0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                              business.increment();
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("${Stylings.imgPath}/add.png", fit: BoxFit.contain,),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: Get.size.width*0.18,
                          height: Get.size.height*0.08,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 20,
                                height: 15,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
                                ),
                              ),
                              Obx(()=>Text(business.count.toString(),style: Stylings.titles.copyWith(fontSize: 12),),),
                              Container(
                                width: 20,
                                height: 15,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(50))
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                               business.decreament();
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("${Stylings.imgPath}/remove.png", fit: BoxFit.contain,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //checkout
                Obx(()=>GestureDetector(
                  onTap: (){
                    business.bookingTotal=(business.ticketPrice*business.count.value).toDouble();
                   // print(business.bookingTotal);
                   Get.to(Payment(booking: widget.theEvent), arguments: (business.bookingTotal), );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.size.width,
                    height: Get.size.height*0.05,
                    margin: const EdgeInsets.symmetric(horizontal: 10),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Stylings.orange
                    ),
                    child: Text(
                          "Pay ${(business.ticketPrice*business.count.value).toStringAsFixed(2)}", style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),)
                  ),
                ),),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Stylings.bgColor,
      appBar: AppBar(
        backgroundColor: Stylings.bgColor,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 15,
          ),
        ),
        title: Text("Details",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16,),
          //Place
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.theEvent["title"],style: Stylings.titles.copyWith(fontSize: 12),),
                const SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_clock_regular, color: Colors.black, size: 15,),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['date'],style: Stylings.subTitles.copyWith(fontSize: 10))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_location_regular, color: Colors.black, size: 15,),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['place']??"Club House Center",style: Stylings.subTitles.copyWith(fontSize: 10))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_city_regular, color: Colors.black, size: 15,),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['location'],style: Stylings.subTitles.copyWith(fontSize: 10))
                      ],
                    ),],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.person_add_alt_outlined, color: Colors.black, size: 18,),
                const SizedBox(width: 10,),
                Text("Invite Friends",style: Stylings.titles.copyWith(fontSize: 11))
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Text("Join us for an enchanting evening at the annual Twilight Lantern Festival, a celebration of light, community, and creativity. As the sun sets over Willow Park, the festivities will begin with a serene lantern-making workshop where attendees of all ages can craft their own unique lanterns using a variety of materials and guided instructions.",
              style: Stylings.subTitles.copyWith(fontSize: 11),),

          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Meet your host",style: Stylings.titles.copyWith(fontSize: 11),),),
          //Rating
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
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
                    Text(widget.theEvent['username'],style: Stylings.titles.copyWith(fontSize: 11)),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 12, color: Colors.orangeAccent,),
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 12, color: Colors.orangeAccent,),
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 12, color: Colors.orangeAccent,),
                        widget.theEvent['rating']==null?
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 12, color: Colors.orangeAccent,): const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 12, color: Colors.black12),
                        const Icon(FluentSystemIcons.ic_fluent_star_filled, size: 12, color: Colors.black12),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['rating']??"4.5",style: Stylings.titles.copyWith(fontSize: 10)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          //location and Map
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Where it will be",style: Stylings.titles.copyWith(fontSize: 11)),
                const SizedBox(height: 5),
                Text(widget.theEvent['direction']??"107, New Sean Close, The Club House Center",style: Stylings.subTitles.copyWith(fontSize: 10)),
                const SizedBox(height: 5),
                SizedBox(
                  width: size.width,
                  height: size.height*0.2,
                  child: Image.asset("assets/images/map.png",fit: BoxFit.cover,),
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Rules",style: Stylings.titles.copyWith(fontSize: 11),),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            width: size.width,
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
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("${Stylings.imgPath}/dressicon.png", fit: BoxFit.contain,),
                        ),
                        const SizedBox(width: 10,),
                        Text("Dress Code: Smart and Glamorous",style: Stylings.subTitles.copyWith(fontSize: 10))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/images/person.png", fit: BoxFit.contain,),
                        ),
                        const SizedBox(width: 10,),
                        Text("Minimum Age: 18",style: Stylings.subTitles.copyWith(fontSize: 10))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("${Stylings.imgPath}/smoke.png", fit: BoxFit.contain,),
                        ), const SizedBox(width: 10,),
                        Text('Not permitted to smoke',style: Stylings.subTitles.copyWith(fontSize: 10))
                      ],
                    ),
                   ],
                ),
              ],
            ),
          ),

          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Options",style: Stylings.titles.copyWith(fontSize: 11),),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            width: size.width,
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
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("${Stylings.imgPath}/lock.png", fit: BoxFit.contain,),
                        ),
                        const SizedBox(width: 10,),
                        Text("Got a code?",style: Stylings.subTitles.copyWith(fontSize: 10))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       const Icon(FluentSystemIcons.ic_fluent_calendar_regular,size: 15, color: Colors.black,),
                        const SizedBox(width: 10,),
                        Text("Add to calendar",style: Stylings.subTitles.copyWith(fontSize: 10))
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
                            width: 15,
                            height: 15,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("${Stylings.imgPath}/abt.png", fit: BoxFit.contain,),
                          ), const SizedBox(width: 10,),
                          Text('Need help?',style: Stylings.subTitles.copyWith(fontSize: 10))
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
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: size.height*0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("\$${widget.theEvent['price']}.99",style: Stylings.titles.copyWith(fontSize: 12),),
              GestureDetector(
                onTap: (){
                  //
                  _dispayBottomSheet();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Stylings.orange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width: size.width*0.3,
                  height: size.height*0.04,
                  child: Text("Book", style: Stylings.titles.copyWith(color: Colors.white, fontSize: 12),),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
