// import 'package:demo/productDetail.dart';
// import 'package:demo/var.dart';
// import 'package:flutter/material.dart';
//
//
// const _initialpage = 2.0;
//
// class cardview extends StatefulWidget {
//   const cardview({Key? key}) : super(key: key);
//
//   @override
//   State<cardview> createState() => _cardviewState();
// }
//
// class _cardviewState extends State<cardview> {
//   PageController pagecontrol =
//       PageController(viewportFraction: 0.3, initialPage: _initialpage.toInt());
//   PageController textcontrol =
//       PageController(initialPage: _initialpage.toInt());
//   double cpage = _initialpage;
//   double txtpage = _initialpage;
//
//   void currentpage() {
//     setState(() {
//       cpage = pagecontrol.page!;
//       txtpage = pagecontrol.page!;
//     });
//   }
//
//   void currentpagetext() {
//     setState(() {
//       txtpage = cpage;
//     });
//   }
//
//   @override
//   void initState() {
//     pagecontrol.addListener(currentpage);
//     textcontrol.addListener(currentpagetext);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     pagecontrol.removeListener(currentpage);
//     textcontrol.removeListener(currentpagetext);
//     pagecontrol.dispose();
//     textcontrol.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final sizee = MediaQuery.of(context).size;
//
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
//           leading: BackButton(
//             color: Colors.white,
//           ),
//         ),
//         body: Stack(
//           children: [
//             Transform.scale(
//               alignment: Alignment.bottomCenter,
//               scale: 1.8,
//               child: PageView.builder(
//                   onPageChanged: (v) {
//                     if (v < img.length) {
//                       textcontrol.animateToPage(v,
//                           duration: Duration(milliseconds: 400),
//                           curve: Curves.easeOut);
//                     }
//                   },
//                   controller: pagecontrol,
//                   scrollDirection: Axis.vertical,
//                   itemCount: img.length + 1,
//                   itemBuilder: (context, index) {
//                     if (index == 0) {
//                       return SizedBox.shrink();
//                     }
//                     final result = cpage - index + 1;
//                     final value = -0.4 * result + 1;
//                     final opicity = value.clamp(0.0, 1.0);
//
//                     return GestureDetector(
//                       onTap: () {
//                         senditem s1 = senditem(img[index - 1],
//                             imgname[index - 1], imgprice[index - 1]);
//                         Navigator.of(context).push(
//                           PageRouteBuilder(
//                               transitionDuration: Duration(milliseconds: 650),
//                               pageBuilder: (context, animation, _) {
//                                 return FadeTransition(
//                                   opacity: animation,
//                                   child: detail(s1),
//                                 );
//                               }),
//                         );
//                         // Navigator.pushNamed(context, arguments: s1);
//                       },
//                       child: Transform(
//                         alignment: Alignment.bottomCenter,
//                         transform: Matrix4.identity()
//                           ..setEntry(3, 2, 0.001)
//                           ..translate(
//                               0.0,
//                               MediaQuery.of(context).size.height /
//                                   2.6 *
//                                   (1 - value).abs())
//                           ..scale(value),
//                         child: Opacity(
//                           opacity: opicity,
//                           child: Hero(
//                             tag: imgname[index - 1],
//                             child: Image.asset(img[index - 1]),
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//             ),
//             Positioned(
//               left: 0,
//               right: 0,
//               top: 0,
//               height: 100,
//               child: TweenAnimationBuilder<double>(
//                   tween: Tween(begin: 1.0, end: 0.0),
//                   duration: Duration(milliseconds: 500),
//                   builder: (context, value, child) {
//                     return Transform.translate(
//                         offset: Offset(0.0, -100 * value),
//                         child: child);
//                   },
//
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: PageView.builder(
//                         physics: NeverScrollableScrollPhysics(),
//                         controller: textcontrol,
//                         itemCount: img.length,
//                         itemBuilder: (context, index) {
//                           final opicity = 1 - (index - txtpage).abs().clamp(0.0, 1.0);
//                           return Opacity(
//                             opacity: opicity,
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: sizee.width * 0.2),
//                               child: Hero(
//                                 tag: " text_${imgname[index]}",
//                                 child: Material(
//                                   child: Text(
//                                     "${imgname[index]}",
//                                     style: TextStyle(
//                                         fontSize: 30,
//                                         fontWeight: FontWeight.w700),
//                                     textAlign: TextAlign.center,
//                                     maxLines: 2,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     AnimatedSwitcher(
//                       duration: Duration(milliseconds: 300),
//                       child: Text(
//                         "\$${imgprice[cpage.toInt()]}",
//                         style: TextStyle(fontSize: 20, color: Colors.black),
//                       ),
//                       key: Key(imgname[cpage.toInt()]
//
//
//
//
//
//
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
