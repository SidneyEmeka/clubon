import 'package:clubon/homes/timeline.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'homes/friends.dart';
import 'homes/profile.dart';
import 'homes/search.dart';
import 'homes/tickets.dart';
import 'onboarding/signinmethod.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _UserTimelineState();
}

class _UserTimelineState extends State<Homepage> {
  int selectedIndex = 0;
  Widget buildBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const Timeline();
      case 1:
        return const Friends();
      case 2:
        return const Search();
      case 3:
        return const Tickets();
      case 4:
        return const Profile();
      default:
        const Center(
          child: Text("Home"),
        );
        return const Center(
          child: Text("Invalid Page"),
        );
    }
  }

  void onTapNavItem(int index) {
    setState(() {
      selectedIndex = index;
      // print(selectedIndex);
    });
  }

  List<BottomNavigationBarItem> navItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Container(
        width: 20,
        height: 20,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Image.asset("${Stylings.imgPath}/home.png", fit: BoxFit.contain,),
      ),
      activeIcon: Container(
        width: 20,
        height: 20,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Image.asset("${Stylings.imgPath}/homec.png", fit: BoxFit.cover,),
      ),
      label: "Home",
    ),
     BottomNavigationBarItem(
      icon: Container(
        width: 20,
        height: 20,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Image.asset("${Stylings.imgPath}/frnds.png", fit: BoxFit.contain,),
      ),
      activeIcon: Container(
        width: 20,
        height: 20,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Image.asset("${Stylings.imgPath}/frndsc.png", fit: BoxFit.cover,),
      ),
      label: "Friends",
    ),
     BottomNavigationBarItem(
       icon: Container(
         width: 20,
         height: 20,
         decoration: const BoxDecoration(
           color: Colors.transparent,
           shape: BoxShape.circle,
         ),
         child: Image.asset("${Stylings.imgPath}/sech.png", fit: BoxFit.contain,),
       ),
       activeIcon: Container(
         width: 20,
         height: 20,
         decoration: const BoxDecoration(
           color: Colors.transparent,
           shape: BoxShape.circle,
         ),
         child: Image.asset("${Stylings.imgPath}/sechc.png", fit: BoxFit.cover,),
       ),
      label: "Search",
    ),
     BottomNavigationBarItem(
       icon: Container(
         width: 20,
         height: 20,
         decoration: const BoxDecoration(
           color: Colors.transparent,
           shape: BoxShape.circle,
         ),
         child: Image.asset("${Stylings.imgPath}/tickets.png", fit: BoxFit.contain,),
       ),
       activeIcon: Container(
         width: 20,
         height: 20,
         decoration: const BoxDecoration(
           color: Colors.transparent,
           shape: BoxShape.circle,
         ),
         child: Image.asset("${Stylings.imgPath}/ticketsc.png", fit: BoxFit.cover,),
       ),
      label: "Tickets",
    ),
     BottomNavigationBarItem(
       icon: const Icon(Icons.person_outline_outlined, size: 24, color: Colors.black,),
       activeIcon: Icon(Icons.person, size: 24, color:Stylings.orange,),
      label: "Profile",
    ),
  ];


  Widget buildtitle(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const Text(
          "Home",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      case 1:
        return const Text(
          "Friends",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      case 2:
        return const Text(
          "Search",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      case 3:
        return const Text(
          "Tickets",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      case 4:
        return const Text(
          "Profile",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      default:
        return const Text("Invalid page");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: GestureDetector(
      //     onTap: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (_) {
      //         return const Signinmethod();
      //       }));
      //     },
      //     child: Icon(
      //       Icons.arrow_back_ios,
      //       color: Stylings.brown,
      //       size: 20,
      //     ),
      //   ),
      //   scrolledUnderElevation: 0,
      //   backgroundColor: Colors.white,
      //   title: buildtitle(selectedIndex),
      //   centerTitle: true,
      // ),
      body: buildBody(selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: Stylings.subTitles.copyWith(color: Stylings.orange, fontSize: 10),
          unselectedLabelStyle: Stylings.subTitles.copyWith(color: Colors.black, fontSize: 10),
          currentIndex: selectedIndex,
          onTap: onTapNavItem,
          unselectedItemColor: Colors.black,
          selectedItemColor: Stylings.orange,
          items: navItems,

        ),
      ),
    );
  }
}
