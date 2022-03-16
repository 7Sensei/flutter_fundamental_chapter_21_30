import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.comment), text: 'Comment'),
                Tab(
                  child: Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/4341/4341047.png'),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(
                  text: 'News',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
            Center(
              child: Text('Tab 4'),
            ),
          ]),
        ),
      ),
    );
  }
}
