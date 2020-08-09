import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  int _activeIndex = 0;

  static const List<Widget> _navPages = [
    Text('首页'),
    Text('我的'),
  ];

  void _onTap(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: _navPages.elementAt(_activeIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('我的'),
            ),
          ],
          currentIndex: _activeIndex,
          selectedItemColor: Colors.blue,
          onTap: _onTap,
        ),
      ),
    );
  }
}
