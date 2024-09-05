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
                        Text("Club House Center",style: Stylings.subTitles)
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
          Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),child: Text("Meet your host",style: Stylings.titles.copyWith(fontSize: 12),),)
        ],
      )
    );
  }
}
