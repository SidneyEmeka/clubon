import 'package:flutter/material.dart';

class Layoutcalc extends StatelessWidget {
  final int randomDiv;
  final double dashWidth;
  final Color theCol;

  const Layoutcalc({super.key, required this.randomDiv, this.dashWidth = 3, required this.theCol});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDiv).floor(),
                (index) =>  SizedBox(
              width: dashWidth,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: theCol),
              ),
            )),
      );
    });
  }
}
