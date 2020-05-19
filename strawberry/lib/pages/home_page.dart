/*
 * -> Author : Akko
 * -> Date : 2020-05-19 15:15:07
 * -> LastEditTime : 2020-05-19 23:38:52
 * -> LastEditors : Akko
 * -> Description : HomePage
 * -> FilePath : \strawberry\lib\pages\home_page.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:strawberry/widgets/bottom_appbar.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: HomeBottomAppbar());
  }
}
