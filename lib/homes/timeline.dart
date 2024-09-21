import 'package:clubon/data/constantdata.dart';
import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/utils/reusables/locheader.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/reusables/eventcard.dart';
import '../utils/reusables/filtercard.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  String selectedtab = "Tonight";
  String location = "Miami";





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Locheader(),
          selectedtab == "Tonight"
              ? Expanded(
                  child: ListView(
                  children: [
                    //filter
                    Container(
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ...Clubon.filters.entries.map((aFilter) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedtab = aFilter.key;
                                  });
                                },
                                child: Filtercard(
                                  title: aFilter.key,
                                  imgUrl: aFilter.value,
                                  selected: selectedtab,
                                ));
                          })
                        ],
                      ),
                    ),
                    //Events
                    ...Clubon.tonight.map((anEvent) {
                      final eventPosterPfp = anEvent['pfp'];
                      final eventPosterUsername = anEvent['username'];
                      final eventBanner = anEvent['imgUrl'];
                      final eventComments = anEvent['comments'];
                      final eventLikes = anEvent['likes'];
                      final eventTitle = anEvent['title'];
                      final eventDate = anEvent['date'];
                      final eventLocation = anEvent['location'];
                      final eventPrice = anEvent['price'];
                      return Eventcard(
                        imgUrl: eventBanner,
                        comments: eventComments,
                        likes: eventLikes,
                        title: eventTitle,
                        date: eventDate,
                        location: eventLocation,
                        price: eventPrice,
                        pfp: eventPosterPfp,
                        username: eventPosterUsername, theEvent: anEvent,
                      );
                    })
                  ],
                ))
              : selectedtab == "This week"
                  ? Expanded(
                      child: ListView(
                      children: [
                        //filter
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black12))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ...Clubon.filters.entries.map((aFilter) {
                                return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtab = aFilter.key;
                                      });
                                    },
                                    child: Filtercard(
                                      title: aFilter.key,
                                      imgUrl: aFilter.value,
                                      selected: selectedtab,
                                    ));
                              })
                            ],
                          ),
                        ),
                        //Events
                        ...Clubon.thisweek.map((anEvent) {
                          final eventPosterPfp = anEvent['pfp'];
                          final eventPosterUsername = anEvent['username'];
                          final eventBanner = anEvent['imgUrl'];
                          final eventComments = anEvent['comments'];
                          final eventLikes = anEvent['likes'];
                          final eventTitle = anEvent['title'];
                          final eventDate = anEvent['date'];
                          final eventLocation = anEvent['location'];
                          final eventPrice = anEvent['price'];
                          return Eventcard(
                            imgUrl: eventBanner,
                            comments: eventComments,
                            likes: eventLikes,
                            title: eventTitle,
                            date: eventDate,
                            location: eventLocation,
                            price: eventPrice,
                            pfp: eventPosterPfp,
                            username: eventPosterUsername, theEvent: anEvent,
                          );
                        })
                      ],
                    ))
                  : selectedtab == "New event"
                      ? Expanded(
                          child: ListView(
                          children: [
                            //filter
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black12))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ...Clubon.filters.entries.map((aFilter) {
                                    return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedtab = aFilter.key;
                                          });
                                        },
                                        child: Filtercard(
                                          title: aFilter.key,
                                          imgUrl: aFilter.value,
                                          selected: selectedtab,
                                        ));
                                  })
                                ],
                              ),
                            ),
                            //Events
                            ...Clubon.newevent.map((anEvent) {
                              final eventPosterPfp = anEvent['pfp'];
                              final eventPosterUsername = anEvent['username'];
                              final eventBanner = anEvent['imgUrl'];
                              final eventComments = anEvent['comments'];
                              final eventLikes = anEvent['likes'];
                              final eventTitle = anEvent['title'];
                              final eventDate = anEvent['date'];
                              final eventLocation = anEvent['location'];
                              final eventPrice = anEvent['price'];
                              return Eventcard(
                                imgUrl: eventBanner,
                                comments: eventComments,
                                likes: eventLikes,
                                title: eventTitle,
                                date: eventDate,
                                location: eventLocation,
                                price: eventPrice,
                                pfp: eventPosterPfp,
                                username: eventPosterUsername, theEvent: anEvent,
                              );
                            })
                          ],
                        ))
                      : Expanded(
                          child: ListView(
                          children: [
                            //filter
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black12))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ...Clubon.filters.entries.map((aFilter) {
                                    return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedtab = aFilter.key;
                                          });
                                        },
                                        child: Filtercard(
                                          title: aFilter.key,
                                          imgUrl: aFilter.value,
                                          selected: selectedtab,
                                        ));
                                  })
                                ],
                              ),
                            ),
                            //Events
                            ...Clubon.popular.map((anEvent) {
                              final eventPosterPfp = anEvent['pfp'];
                              final eventPosterUsername = anEvent['username'];
                              final eventBanner = anEvent['imgUrl'];
                              final eventComments = anEvent['comments'];
                              final eventLikes = anEvent['likes'];
                              final eventTitle = anEvent['title'];
                              final eventDate = anEvent['date'];
                              final eventLocation = anEvent['location'];
                              final eventPrice = anEvent['price'];
                              return Eventcard(
                                imgUrl: eventBanner,
                                comments: eventComments,
                                likes: eventLikes,
                                title: eventTitle,
                                date: eventDate,
                                location: eventLocation,
                                price: eventPrice,
                                pfp: eventPosterPfp,
                                username: eventPosterUsername, theEvent: anEvent,
                              );
                            })
                          ],
                        ))
        ],
      )),
    );
  }
}
