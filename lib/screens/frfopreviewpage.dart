import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';
class Frfopreviewpage extends StatelessWidget {
  const Frfopreviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            FluentSystemIcons.ic_fluent_ios_arrow_left_filled,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Followers (1.2M)",
          style: Stylings.titles.copyWith(fontSize: 13),
        ),
        centerTitle: true,
      ),
    );
  }
}
