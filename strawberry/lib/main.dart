/*
 * -> Author : Akko
 * -> Date : 2020-05-18 17:15:23
 * -> LastEditTime : 2020-05-20 16:43:40
 * -> LastEditors : Akko
 * -> Description : Strawberry
 * -> FilePath : \strawberry\lib\main.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:strawberry/pages/home_page.dart';
import 'package:strawberry/routes/bottom_appbar_setting.dart';
import 'package:strawberry/routes/test_route.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '草莓 - 效率APP',
        // initialRoute: "/",//名为"/"的路由作为应用的home(首页)
        theme: ThemeData(
          primarySwatch: Colors.pink[50],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          // "/": (context) =>
          //     MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
          "test_route": (context) => TestRoute(),
          "home_bottom_appbar_setting_route": (context) => HomeBottomAppBarSettingRoute(),
        },
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
