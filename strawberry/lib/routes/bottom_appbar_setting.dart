/*
 * -> Author : Akko
 * -> Date : 2020-05-20 00:32:00
 * -> LastEditTime : 2020-05-20 00:36:26
 * -> LastEditors : Akko
 * -> Description : BottomAppBar Setting
 * -> FilePath : \strawberry\lib\routes\bottom_appbar_setting.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:strawberry/widgets/bottom_appbar.dart';

class HomeBottomAppBarSettingRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Route"),
      ),
      body: HomeBottomAppbar(),
    );
  }
}