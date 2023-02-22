import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

const IMAGES = ["apex", "cod", "destiny", "fc3", "game_4", "ghost", "mk11", "nfs", "pubg", "mk112"];
final borderRadius = BorderRadius.circular(20.0);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swipe Deck',
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe Deck"),
      ),
      body: Center(
        child: Container(
          width: 600,
          child: Center(
            child: SwipeDeck(
              startIndex: 3,
              emptyIndicator: Container(
                child: Center(
                  child: Text("Nothing Here"),
                ),
              ),
              cardSpreadInDegrees: 5, // Change the Spread of Background Cards
              onSwipeLeft: (){
                print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
              },
              onSwipeRight: (){
                print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
              },
              onChange: (index){
                print(IMAGES[index]);
              },
              widgets: IMAGES
                  .map((e) => GestureDetector(
                onTap: () {
                  print(e);
                },
                child: ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.asset(
                      "assets/images/$e.jpg",
                      fit: BoxFit.cover,
                    )),
              ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}


































class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 4;
  List <Color>l1 =[

      Colors.deepPurpleAccent,
      Colors.white24,
      Colors.red,
      Colors.redAccent,
      Colors.teal,
      Colors.tealAccent,
      Colors.yellow,
      Colors.indigo,
      Colors.indigoAccent,
      Colors.purpleAccent,
      Colors.purple,
      Colors.pink,
      Colors.pinkAccent,
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.green,
      Colors.lightGreen,
      Colors.lightGreenAccent,
      Colors.lime,
      Colors.limeAccent,
      Colors.cyanAccent,
      Colors.cyan,
      Colors.blue,
      Colors.black,
      Colors.blueGrey,
      Colors.brown,
      Colors.lightBlue,
      Colors.lightGreenAccent,
      Colors.tealAccent,
      Colors.yellowAccent,
      Colors.deepOrangeAccent,
  ];


  @override
  Widget build(BuildContext context) {
    SwipeableCardSectionController _cardController = SwipeableCardSectionController();
    //  c1 (

    // );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            items: [
             Container(
               height: 600,
               width: 600,
               color: Colors.greenAccent,
             ),
             Container(
               height: 500,
               width: 350,
               color: Colors.green,
             ),
             Container(
               height: 500,
               width: 350,
               color: Colors.orange,
             ),
            ],
            onCardSwiped: (dir, index, widget) {
              if (counter <= l1.length) {
                _cardController.addItem(Container(height: 500,width: 350,color:l1[index]));
                counter++;
              }
            },

            enableSwipeUp: false,
            enableSwipeDown: false,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.chevron_left),
                  onPressed: () => _cardController.triggerSwipeLeft(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.chevron_right),
                  onPressed: () => _cardController.triggerSwipeRight(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.arrow_upward),
                  onPressed: () => _cardController.triggerSwipeUp(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.arrow_downward),
                  onPressed: () => _cardController.triggerSwipeDown(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}