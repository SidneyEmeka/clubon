// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../styles/stylings.dart';
//
// class Toggletile extends StatefulWidget {
//   late  bool isF;
//   final String title;
//   final String sub;
//   final IconData icon;
//   const Toggletile({super.key, required this.isF, required this.title, required this.sub, required this.icon});
//
//   @override
//   State<Toggletile> createState() => _ToggletileState();
// }
//
// class _ToggletileState extends State<Toggletile> {
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       width: Get.width,
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       height: 60,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(7),
//         border: Border(top:BorderSide(color: Colors.grey.shade200)),
//       ),
//       child: SwitchListTile(
//         value: widget.isF,
//         activeColor:Colors.white,
//         contentPadding: EdgeInsets.zero,
//         splashRadius: 2,
//         activeTrackColor: Stylings.orange,
//         isThreeLine: true,
//         trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
//           return Colors.transparent; // Use the default color.
//         }),
//         inactiveTrackColor: Colors.grey.shade300,
//         inactiveThumbColor: Colors.white,
//         onChanged: (value){
//           setState(() {
//             widget.isF = !widget.isF;
//           });
//         },
//         subtitle:Text("Hide your account from everyone",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade500),),
//         title: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 5.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Icon(Icons.lock,size: 15,color: Colors.black,),
//               SizedBox(width: 5,),
//               Text("Become an influencer",style: Stylings.titles.copyWith(fontSize: 12),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
