/*
 * -> Author : Akko
 * -> Date : 2020-05-19 23:55:06
 * -> LastEditTime : 2020-05-20 00:29:16
 * -> LastEditors : Akko
 * -> Description : Test Route
 * -> FilePath : \strawberry\lib\routes\routes.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';

class TestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Route"),
      ),
      body: Center(
        child: Text("This is test route"),
      ),
    );
  }
}