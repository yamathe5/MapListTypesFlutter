// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:maplist/data.dart';

// class MapList extends StatelessWidget {
//   const MapList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     for (var i = 0; i < itemList.length; i++) {
//       // print(
//       //     '${itemList[i].saludo} ${itemList[i].nombre} ${itemList[i].apellido} tienes ${itemList[i].edad} años.');
//     }
//     return Container(
//       margin: const EdgeInsets.only(left: 10, right: 10),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Stands'),
//             SizedBox(
//               height: 180,
//               child: ListView.builder(
//                   itemCount: itemList.length,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) => Container(
//                         margin: const EdgeInsets.only(right: 20, bottom: 20),
//                         // margin: const EdgeInsets.only(bottom: 20),
//                         width: 300,
//                         height: 180,
//                         padding: const EdgeInsets.all(10),
//                         decoration: const BoxDecoration(
//                             color: Colors.red,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(25))),
//                         // child: Text(
//                         //     '${itemList[index].saludo} ${itemList[index].nombre} ${itemList[index].apellido} tienes ${itemList[index].edad} años.'),
//                       )),
//             ),
//             const Text('Consferencias magistrales'),
//             Flexible(
//               child: ListView.builder(
//                 itemCount: itemList.length,
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemBuilder: ((context, index) {
//                   return Container(
//                     // margin: const EdgeInsets.symmetric(
//                     //     horizontal: 22, vertical: 10),
//                     margin: const EdgeInsets.only(bottom: 20),
//                     width: 100,
//                     height: 180,
//                     padding: const EdgeInsets.all(10),
//                     decoration: const BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.all(Radius.circular(25))),
//                     // child: Text(
//                     //     '${itemList[index].saludo} ${itemList[index].nombre} ${itemList[index].apellido} tienes ${itemList[index].edad} años.'),
//                   );
//                 }),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// // ListView.builder(
// //       itemCount: itemList.length,
// //       itemBuilder: ((context, index) {
// //         return Container(
// //           margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
// //           // width: MediaQuery.of(context).size.width,
// //           height: 180,
// //           color: Colors.red,
// //           child: Text(
// //               '${itemList[index].saludo} ${itemList[index].nombre} ${itemList[index].apellido} tienes ${itemList[index].edad} años.'),
// //         );
// //       }),
// //     );