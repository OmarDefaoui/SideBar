import 'package:flutter/material.dart';
import 'package:sidebar/MenuDashboardPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SideBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuDashboardPage(
        navigation: navigationWidget(),
        parent: parentWidget(),
      ),
    );
  }

  Widget parentWidget() {
    return Expanded(
      child: Container(
        color: Colors.yellow,
      ),
    );
  }

  Widget navigationWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('App', style: TextStyle(color: Colors.white, fontSize: 20)),
        SizedBox(height: 10),
        Text('Home', style: TextStyle(color: Colors.white, fontSize: 20)),
        SizedBox(height: 10),
        Text('Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
        SizedBox(height: 10),
        Text('List', style: TextStyle(color: Colors.white, fontSize: 20)),
      ],
    );
  }
}
