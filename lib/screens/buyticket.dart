import 'package:clubon/homepage.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utils/styles/stylings.dart';

class Buyticket extends StatefulWidget {
  final Map<String,dynamic> theEvent;
  const Buyticket({super.key, required this.theEvent});

  @override
  State<Buyticket> createState() => _BuyticketState();
}

class _BuyticketState extends State<Buyticket> {
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
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return const Homepage();
            }));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Stylings.brown,
            size: 20,
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
                Text(widget.theEvent["title"],style: Stylings.titles.copyWith(fontSize: 14),),
                const SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_clock_regular, color: Colors.black, size: 20,),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['date'],style: Stylings.subTitles)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_location_regular, color: Colors.black, size: 20,),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['place']??"Club House Center",style: Stylings.subTitles)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_city_regular, color: Colors.black, size: 20,),
                        const SizedBox(width: 10,),
                        Text(widget.theEvent['location'],style: Stylings.subTitles)
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
                const Icon(Icons.person_add_alt_outlined, color: Colors.black, size: 20,),
                const SizedBox(width: 10,),
                Text("Invite Friends",style: Stylings.titles.copyWith(fontSize: 12))
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
            child: Text("Join us for an enchanting evening at the annual Twilight Lantern Festival, a celebration of light, community, and creativity. As the sun sets over Willow Park, the festivities will begin with a serene lantern-making workshop where attendees of all ages can craft their own unique lanterns using a variety of materials and guided instructions.",style: Stylings.subTitles,),

          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Meet your host",style: Stylings.titles.copyWith(fontSize: 12),),),
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
                Text("Where it will be",style: Stylings.titles.copyWith(fontSize: 12)),
                const SizedBox(height: 5),
                Text(widget.theEvent['direction']??"107, New Sean Close, The Club House Center",style: Stylings.subTitles),
                const SizedBox(height: 5),
                SizedBox(
                  width: size.width,
                  height: size.height*0.2,
                  child: Image.asset("assets/images/map.png",fit: BoxFit.cover,),
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Rules",style: Stylings.titles.copyWith(fontSize: 12),),),
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

          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),child: Text("Options",style: Stylings.titles.copyWith(fontSize: 12),),),
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
                       Icon(FluentSystemIcons.ic_fluent_calendar_regular,size: 18, color: Colors.black,),
                        const SizedBox(width: 10,),
                        Text("Add to calendar",style: Stylings.subTitles)
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
                          child: Image.asset("${Stylings.imgPath}/abt.png", fit: BoxFit.contain,),
                        ), const SizedBox(width: 10,),
                        Text('Need help?',style: Stylings.subTitles)
                      ],
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
              Text("\$${widget.theEvent['price']}",style: Stylings.titles.copyWith(fontSize: 15),),
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Stylings.orange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width: size.width*0.3,
                  height: size.height*0.04,
                  child: Text("Book", style: Stylings.titles.copyWith(color: Colors.white, fontSize: 15),),
                ),
              )
            ],
          ),
        ),
    );
  }
}
