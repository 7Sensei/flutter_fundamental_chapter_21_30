import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar tabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
          top: BorderSide(color: Colors.redAccent[100], width: 5),
        ),
      ),
      tabs: [
        Tab(icon: Icon(Icons.comment), text: 'Comment'),
        Tab(icon: Icon(Icons.computer), text: 'Comuputer'),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(tabBar.preferredSize.height),
                child: Container(
                  child: tabBar,
                  color: Colors.amber,
                )),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
          ]),
        ),
      ),
    );
  }
}
