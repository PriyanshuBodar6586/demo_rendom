// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_swipable/flutter_swipable.dart';
//
// // Link to DB
// final List data = [
//   {
//     'color': Colors.red,
//   },
//   {
//     'color': Colors.green,
//   },
//   {
//     'color': Colors.blue,
//   }
// ];
//
// class Tinder extends StatefulWidget {
//   @override
//   _TinderState createState() => _TinderState();
// }
//
// class _TinderState extends State<Tinder> {
//   // Dynamically load cards from database
//   List<Card> cards = [
//     Card(
//       data[0]['color'],
//     ),
//     Card(
//       data[1]['color'],
//     ),
//     Card(
//       data[2]['color'],
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     // Stack of cards that can be swiped. Set width, height, etc here.
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.9,
//       height: MediaQuery.of(context).size.height * 0.7,
//       // Important to keep as a stack to have overlay of cards.
//       child: Stack(
//         children: cards,
//       ),
//     );
//   }
// }
//
// class Card extends StatelessWidget {
//   // Made to distinguish cards
//   // Add your own applicable data here
//   final Color color;
//   Card(this.color);
//
//   @override
//   Widget build(BuildContext context) {
//     return Swipable(
//       // Set the swipable widget
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16.0),
//           color: color,
//         ),
//       ),
//
//       // onSwipeRight, left, up, down, cancel, etc...
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//

























// import 'package:flutter/material.dart';
// import 'package:flutter_tindercard/flutter_tindercard.dart';
//
// class MyCustomWidget extends StatefulWidget {
//   @override
//   _MyCustomWidgetState createState() => _MyCustomWidgetState();
// }
//
// class _MyCustomWidgetState extends State<MyCustomWidget>
//     with TickerProviderStateMixin {
//
//   var tinderList = [
//     Icons.emoji_food_beverage,
//     Icons.burst_mode,
//     Icons.handshake,
//     Icons.thumb_up_alt_rounded,
//     Icons.thumb_down,
//     Icons.subscriptions,
//     Icons.comment,
//     Icons.home,
//     Icons.coffee,
//     Icons.severe_cold,
//     Icons.wb_sunny,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     double _width = MediaQuery.of(context).size.width;
//     CardController controller; //Use this to trigger swap.
//     return Scaffold(
//       body: Column(
//         children: [
//           Center(
//             child: Container(
//               height: _width * 1.1,
//               child: TinderSwapCard(
//                 swipeUp: true,
//                 swipeDown: true,
//                 orientation: AmassOrientation.BOTTOM,
//                 totalNum: tinderList.length,
//                 stackNum: 3,
//                 swipeEdge: 4,
//                 maxWidth: _width * .8,
//                 maxHeight: _width * .8,
//                 minWidth: _width * .6,
//                 minHeight: _width * .79,
//                 cardBuilder: (context, index) {
//                   return Container(
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [Color(0xff3224AD), Color(0xffC26AD5)],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight),
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(.15),
//                           offset: Offset(0, 5),
//                           blurRadius: 40,
//                         ),
//                       ],
//                     ),
//                     // child: Text(
//                     //   'Swipe Anywhere...\nPage Index: ${index + 1}',
//                     //   textAlign: TextAlign.center,
//                     //   style: TextStyle(
//                     //     color: Colors.white.withOpacity(.7),
//                     //     fontWeight: FontWeight.bold,
//                     //     fontSize: _width / 17,
//                     //   ),
//                     // ),
//                     child: Icon(
//                       tinderList[index], size: 100,
//                     ),
//                   );
//                 },
//                 cardController: controller = CardController(),
//                 swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
//                   /// Get swiping card's alignment
//                   if (align.x < 0) {
//                     //Card is LEFT swiping
//                     print('Left Swipe Details:-');
//                     print(details);
//                   } else if (align.x > 0) {
//                     //Card is RIGHT swiping
//                     print('Right Swipe Detail:-');
//                     print(details);
//                   }
//                 },
//                 swipeCompleteCallback:
//                     (CardSwipeOrientation orientation, int index) {
//                   print('Orientation:-');
//                   print(orientation);
//                   print(orientation.name);
//                   print(orientation.index);
//                   print(index);
//                   print('End Orientation');
//                   /// Get orientation & index of swiped card!
//                 },
//               ),
//             ),
//           ),
//           ElevatedButton(
//               onPressed:(){
//                 controller.triggerRight();
//               },
//               child: Text('Tap')
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//




















// import 'package:demo/var.dart';

















// import 'package:flutter/material.dart';
//
// class detail extends StatefulWidget {
//   final senditem s1;
//
//     const detail(this.s1, {Key? key}) : super(key: key);
//
//   @override
//   State<detail> createState() => _detailState();
// }
//
// class _detailState extends State<detail> {
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
//           leading: BackButton(
//             color: Colors.white,
//           ),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: 30),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
//                 child: Hero(
//                   tag: " text_${widget.s1.imgname}",
//                   child: Material(
//                     child: Text(
//                       "${widget.s1.imgname}",
//                       maxLines: 2,
//                       textAlign: TextAlign.center,
//                       style:
//                           TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             SizedBox(
//               height: size.height * 0.5,
//               child: Stack(
//                 children: [
//                   Positioned.fill(
//                     child: Hero(
//                       tag: "${widget.s1.imgname}",
//                       child: Image.asset(
//                         "${widget.s1.img}",
//                         fit: BoxFit.fitHeight,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: size.width * 0.05,
//                     bottom: 0,
//                     child: TweenAnimationBuilder<double>(
//                         child: Text(
//                           "${widget.s1.imgprice}",
//                           style: TextStyle(
//                             fontSize: 50,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.white,
//                             shadows: [
//                               BoxShadow(
//                                   color: Colors.black45,
//                                   blurRadius: 10,
//                                   spreadRadius: 20),
//                             ],
//                           ),
//                         ),
//                         tween: Tween(begin: 1.0, end: 0.0),
//                         duration: Duration(milliseconds: 500),
//                         builder: (context, value, child) {
//                           return Transform.translate(
//                               offset: Offset(-100 * value, 240 * value),
//                               child: child);
//                         }),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
