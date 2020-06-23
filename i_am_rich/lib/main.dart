import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
          primaryColor: Colors.blueAccent[100],
          barBackgroundColor: Colors.blueGrey),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'SnackBar',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      child: Container(
        child: SafeArea(
            child: Column(
          children: [
            Center(
              child: Text(
                'I ate $_counter donuts',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Positioned(
              bottom: 50.0,
              right: 30.0,
              child: FloatingActionButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  }),
            )
          ],
        )),
      ),
    );
  }
}
