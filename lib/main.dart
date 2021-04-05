import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPageView App',
      theme: ThemeData.dark(),
      home: MyPageView(),
    );
  }
}

class MyPageView extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyPageView App'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateToPage(0,
              duration: Duration(seconds: 1), curve: Curves.ease);
        },
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                'Ready',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                'Steady',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Go',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
