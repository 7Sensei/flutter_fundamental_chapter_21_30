import 'package:flutter/material.dart';
import '30_colorful_buttom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buttom Transform'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorFullButtom(
                Colors.pink,
                Colors.blue,
                Icons.adb,
              ),
              ColorFullButtom(
                Colors.green,
                Colors.purple,
                Icons.settings,
              ),
              ColorFullButtom(
                Colors.yellow,
                Colors.green,
                Icons.card_giftcard_outlined,
              ),
              ColorFullButtom(
                Colors.purple,
                Colors.yellow,
                Icons.account_balance_wallet_sharp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
