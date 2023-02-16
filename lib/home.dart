// import 'package:demo/var.dart';
// import 'package:flutter/material.dart';
//
// import 'cardprovid.dart';
//
//
// class homecard extends StatefulWidget {
//   const homecard({Key? key}) : super(key: key);
//
//   @override
//   State<homecard> createState() => _homecardState();
// }
//
// class _homecardState extends State<homecard> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pinkAccent.shade200,
//           title: Text(
//             "Baskin Robbins",
//             style: TextStyle(
//               fontSize: 25,
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: GestureDetector(
//           onVerticalDragUpdate: (detail) {
//             if (detail.primaryDelta! < -20) {
//               Navigator.of(context).push(
//                 PageRouteBuilder(
//                     transitionDuration: Duration(milliseconds: 650),
//                     pageBuilder: (context, animation, _) {
//                       return FadeTransition(
//                         opacity: animation,
//                         child: cardview(),
//                       );
//                     }),
//               );
//             }
//           },
//           child: Stack(
//             children: [
//               SizedBox.expand(
//                 child: DecoratedBox(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: AlignmentDirectional.bottomCenter,
//                       colors: [Colors.pink.shade100, Colors.white],
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 height: size.height * 0.4,
//                 left: 0,
//                 right: 0,
//                 top: size.height * 0.15,
//                 child: Hero(
//                   tag: imgname[1],
//                   child: Image.asset('${img[1]}'),
//                 ),
//               ),
//               Positioned(
//                 height: size.height * 0.7,
//                 left: 0,
//                 right: 0,
//                 bottom: 0,
//                 child: Hero(
//                   tag: imgname[2],
//                   child: Image.asset(
//                     '${img[2]}',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 height: size.height,
//                 left: 0,
//                 right: 0,
//                 bottom: -size.height * 0.8,
//                 child: Hero(
//                   tag: imgname[3],
//                   child: Image.asset(
//                     '${img[3]}',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Text(
//                       "Welcome To our Ice-Cream Shop",
//                       style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
