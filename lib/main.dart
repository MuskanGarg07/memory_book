import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:page_turn/page_turn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.purple,
      ),
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = GlobalKey<PageTurnState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTurn(
        key: _controller,
        backgroundColor: Colors.white,
        showDragCutoff: false,
        lastPage: Container(child: Center(child: Text('Last Page!'))),
        children: <Widget>[
          Center(child: Text('Hello1')),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/t4.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/s3.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/s4.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/s&h.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/s1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Image.network(
            'https://5.imimg.com/data5/XQ/KP/MY-40305254/kids-toy-500x500.jpg',
          ),
          Image.network(
            'data:image/jpeg;base64,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',
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://5.imimg.com/data5/XQ/KP/MY-40305254/kids-toy-500x500.jpg'),
                    fit: BoxFit.cover)),
          ),
          Text('Hello2'),
          Text('Hello1'),
          Text('Hello2'),
          Text('Hello1'),
          Text('Hello2'),
          Text('Hello1'),
          Text('Hello2'),
          Text('Hello1'),
          Text('Hello2'),
          //lastPage,
          //image:AssetImage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          _controller.currentState.goToPage(2);
        },
      ),
    );
  }
}
