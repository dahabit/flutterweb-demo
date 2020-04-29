import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  static const routeName = 'homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: Column(
          children: <Widget>[
            NavBarWidget(),
            MainContent(),
          ],
        ),
      ),
    );
  }
}

class NavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpg'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Home')),
              FlatButton(onPressed: () {}, child: Text('About')),
              FlatButton(onPressed: () {}, child: Text('Learn')),
              FlatButton(onPressed: () {}, child: Text('Support')),
            ],
          )
        ],
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                  child: Container(
                child: Text(
                  'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                  style: TextStyle(color: Colors.cyan, fontSize: 20),
                ),
              )),
              Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/dahab.jpg'))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
