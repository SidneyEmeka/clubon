import 'package:clubon/data/constantdata.dart';
import 'package:clubon/homes/filter.dart';
import 'package:clubon/screens/buyticket.dart';
import 'package:clubon/screens/feedback.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  static List<Map<String, dynamic>> allEvents = [
    {
      "pfp":"assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
      "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
      "Friday Hangout: Hangover Party for 9-5ers",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "20",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":"Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "34"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
      "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
      "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "35"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
      "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "52",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":"Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "34",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
      "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
      "Revolutionizing Healthcare: The International Conference on Artificial Intelligence, Machine Learning, and Medical Innovations in the Digital Age",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "35",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
      "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "35"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
      "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "52"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
      "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
      "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "35"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
      "Revolutionizing Healthcare: The International Conference on Artificial Intelligence, Machine Learning, and Medical Innovations in the Digital Age",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "35"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":"Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "61",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
      "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "43"
    },
    {
      "pfp": "assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
          "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "62",
      "place": "Conference Hall",
      "direction": "Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp": "assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
          "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "52"
    },
    {
      "pfp": "assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":
          "Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "34",
      "place": "Conference Hall",
      "direction": "Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp": "assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
          "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "35"
    },
    {
      "pfp": "assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
          "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17",
      "place": "Conference Hall",
      "direction": "Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp": "assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
          "Revolutionizing Healthcare: The International Conference on Artificial Intelligence, Machine Learning, and Medical Innovations in the Digital Age",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "35"
    },
    {
      "pfp": "assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
          "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95",
      "place": "Conference Hall",
      "direction": "Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
      "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "77"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
      "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
      "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "35",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
      "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
      "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "35",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
  ];

  List<Map<String, dynamic>> _foundEvent = [];
  List<Map<String, dynamic>> _previous = [];

  void _runSearch(String keyword) {
    List<Map<String, dynamic>> results = [];

    if (keyword.isEmpty) {
      results = allEvents;
    } else {
      results = allEvents
          .where((event) =>
              event['title'].toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundEvent = results;
      _previous = results;
    });
  }

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    _foundEvent = allEvents;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: Get.size.width,
        height: Get.size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    FluentSystemIcons.ic_fluent_ios_arrow_left_filled,
                    color: Colors.black,
                    size: 17,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Expanded(
                    child: TextField(
                      cursorColor: Colors.black45,
                      style: Stylings.titles.copyWith(fontSize: 12),
                      controller: searchController,
                  onChanged: (value) => _runSearch(value),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 20),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      prefixIcon: const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.black,
                        size: 17,
                      ),
                      hintText: "Search",
                      suffixIcon:  IconButton(
                        icon:const Icon(FluentSystemIcons.ic_fluent_settings_dev_regular,
                        color: Colors.black,
                        size: 17,),
                        onPressed: (){
                          Get.to(()=>const Filter());
                        },
                      ),
                      hintStyle: Stylings.subTitles.copyWith(fontSize: 12),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5))),
                )),
                const SizedBox(width: 15)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            _foundEvent.isNotEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //suggestion
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Try searching for",
                          style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black.withOpacity(0.8)),
                        ),
                      ),
                      SizedBox(
                        height: Get.size.height * 0.3,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              ..._foundEvent.take(5).map((anEvent) {
                                return GestureDetector(
                                  onLongPress: (){
                                     Get.bottomSheet(
                                       Container(
                                         decoration: const BoxDecoration(
                                           borderRadius: BorderRadius.vertical(
                                             top: Radius.circular(15),
                                           ),
                                           color: Colors.white,
                                         ),
                                         height: Get.size.height*0.15,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: [
                                             Expanded(
                                               child: GestureDetector(
                                                 onTap: (){
                                                   Get.to(const Report());
                                                 },
                                                 child: Container(
                                                   margin: const EdgeInsets.only(left: 16,bottom: 10),
                                                   child: Row(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     crossAxisAlignment: CrossAxisAlignment.center,
                                                     children: [
                                                       const Icon(FluentSystemIcons.ic_fluent_flag_off_filled,color: Colors.black,size: 15,),
                                                       const SizedBox(width: 15,),
                                                       Text("Report",style: Stylings.titles.copyWith(fontSize: 11),)
                                                     ],
                                                   ),
                                                 ),
                                               ),
                                             ),
                                             Expanded(
                                               child: GestureDetector(
                                                 onTap: (){
                                                   setState(() {
                                                     _foundEvent.remove(anEvent);
                                                     Get.back();
                                                   });
                                                 },
                                                 child: Container(
                                                   margin: const EdgeInsets.only(left: 16,),
                                                   child: Row(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     crossAxisAlignment: CrossAxisAlignment.center,
                                                     children: [
                                                       const Icon(FluentSystemIcons.ic_fluent_eye_hide_filled,color: Colors.black,size: 15,),
                                                       const SizedBox(width: 15,),
                                                       Text("Mark as irrelevant",style: Stylings.titles.copyWith(fontSize: 11),)
                                                     ],
                                                   ),
                                                 ),
                                               ),
                                             ),
                                           ],
                                         ),
                                       )
                                     );
                                  },
                                  child: ListTile(
                                   onTap: (){
                                     Get.to(Buyticket(theEvent: anEvent));
                                   },
                                    trailing: IconButton(icon: Icon(FluentSystemIcons.ic_fluent_arrow_trending_filled,color: Stylings.orange, size: 15,), onPressed: () {
                                      setState(() {
                                        searchController.text = anEvent['title'];
                                      });
                                    },),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    leading: const Icon(
                                      FluentSystemIcons.ic_fluent_search_regular,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    isThreeLine: false,
                                    horizontalTitleGap: 0.0,
                                    title: Text(
                                      anEvent['title'],
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Stylings.titles.copyWith(fontSize: 11),
                                    ),
                                  ),
                                );
                              })
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            "Press and hold a suggestion to report it",
                            style: Stylings.titles.copyWith(fontSize: 11, color: Colors.black45),
                          ),
                        ),
                      ),
                      //previous
                      const SizedBox(
                        height: 15,
                      ),
                      _previous.isNotEmpty?Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Previously searched",
                          style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black.withOpacity(0.8)),
                        ),
                      ):Container(),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            ..._previous.take(3).map((anEvent) {
                              return ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15),
                                leading: const Icon(
                                  FluentSystemIcons.ic_fluent_history_regular,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                isThreeLine: false,
                                horizontalTitleGap: 0.0,
                                trailing: IconButton(onPressed: (){
                                  setState(() {
                                    _previous.remove(anEvent);
                                  });
                                }, icon: const Icon(FluentSystemIcons.ic_fluent_dismiss_circle_regular, color: Colors.black, size: 15,)),
                                title: Text(
                                  anEvent['title'],
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Stylings.titles.copyWith(fontSize: 11),
                                ),
                              );
                            })
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(
              alignment: Alignment.bottomCenter,
              height: Get.size.height*0.4,
                child: Text("No results...",style: Stylings.subTitles.copyWith(fontSize: 11),)),
            _foundEvent.isNotEmpty?Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Get.defaultDialog(
                    radius: 10,
                    titlePadding: const EdgeInsets.only(top: 25),
                    contentPadding: const EdgeInsets.only(bottom: 20,top: 15,left: 10,right: 10),
                    title: "Clear search history?",
                    titleStyle: Stylings.titles.copyWith(fontSize: 14),
                    middleText: "All your search history will be deleted and it can't be recovered",
                    middleTextStyle: Stylings.subTitles.copyWith(fontSize: 12),
                    backgroundColor: Colors.white,
                    cancel: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)
                        ),
                        width: Get.size.width*0.3,
                        height: Get.size.height*0.04,
                        child: Text("Cancel", style: Stylings.titles.copyWith(fontSize: 12),),
                      ),
                    ),
                    confirm: GestureDetector(
                      onTap: (){
                        setState(() {
                          _previous = [];
                          _foundEvent = [];
                          Get.back();
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)
                        ),
                        width: Get.size.width*0.3,
                        height: Get.size.height*0.04,
                        child: Text("Confirm", style: Stylings.titles.copyWith(fontSize: 12),),
                      ),
                    ),
                  );
                },
                child: Text("Clear all", style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black54),),
              ),
            ):Container(),
            GestureDetector(
              onTap: (){
                Get.to(const Report());
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black54)
                ),
                width: Get.size.width*0.35,
                height: Get.size.height*0.04,
                child: Text("Give feedback", style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black),),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
