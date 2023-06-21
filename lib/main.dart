import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: homePage('First Flutter App'),
    );
  }

  Widget homePage(String title) {

    const titleText = Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'Elvis First App',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 1,
          fontSize: 27,
        ),
      ),
    );

    const subTitle = Text(
      'This is Elvis first flutter app ever!',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Times new roman',
        fontSize: 20,
      ),
    );

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.lightGreen,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    final bottomRow = Column(
      children: [
        titleText,
        subTitle,
        ratings,
        iconList,
      ],
    );

    final mainImage = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/pic1.jpg'),
        Image.asset('images/pic2.jpg'),
        Image.asset('images/pic3.jpg'),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white60,
          fontSize: 20,
        ),

        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.home,
            color: Colors.white60,
            size: 25,
          ),
          tooltip: 'Navigation menu',
        ),

        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.white60,
                size: 25,
              ),
          ),
        ],
      ),

      body: Center(
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mainImage,
              SizedBox(
                // width: 400,
                child: bottomRow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
