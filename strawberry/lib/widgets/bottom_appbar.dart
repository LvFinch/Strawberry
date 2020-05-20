/*
 * -> Author : Akko
 * -> Date : 2020-05-19 21:54:49
 * -> LastEditTime : 2020-05-20 16:25:22
 * -> LastEditors : Akko
 * -> Description : 接口=>HomeBottomAppBar
 * -> FilePath : \strawberry\lib\widgets\bottom_appbar.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeBottomAppbar extends StatefulWidget {
  const HomeBottomAppbar({Key key}) : super(key: key);

  @override
  _BottomAppbarState createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<HomeBottomAppbar> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;
  bool _isBottomBarNotched = true;
  bool _isFabMini = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("test"),
      floatingActionButton: FloatingActionButton(
        mini: this._isFabMini,
        onPressed: () => Fluttertoast.showToast(msg: 'Tap'),
        child: GestureDetector(
          child: Container(
            child: Icon(Icons.add),
          ),
          onLongPress: () {
            //   showModalBottomSheet(
            //     backgroundColor: Colors.transparent,
            //     context: context,
            //     builder: (BuildContext context) => Card(
            //       margin: EdgeInsets.fromLTRB(20, 0, 20, 90),
            //       child: Container(
            //         height: 500,
            //         child: ListView(
            //           padding: const EdgeInsets.all(8),
            //           children: <Widget>[
            //             ListTile(
            //               title: Text('FloatingActionButton position:'),
            //               trailing: DropdownButton<FloatingActionButtonLocation>(
            //                 value: this._fabLocation,
            //                 onChanged: (FloatingActionButtonLocation newVal) {
            //                   if (newVal != null) {
            //                     setState(() => this._fabLocation = newVal);
            //                   }
            //                 },
            //                 items: [
            //                   DropdownMenuItem(
            //                     value: FloatingActionButtonLocation.centerFloat,
            //                     child: Text('centerFloat'),
            //                   ),
            //                   DropdownMenuItem(
            //                     value: FloatingActionButtonLocation.endFloat,
            //                     child: Text('endFloat'),
            //                   ),
            //                   DropdownMenuItem(
            //                     value: FloatingActionButtonLocation.centerDocked,
            //                     child: Text('centerDocked'),
            //                   ),
            //                   DropdownMenuItem(
            //                     value: FloatingActionButtonLocation.endDocked,
            //                     child: Text('endDocked'),
            //                   ),
            //                   DropdownMenuItem(
            //                     value: FloatingActionButtonLocation.miniStartTop,
            //                     child: Text('miniStartTop'),
            //                   ),
            //                   DropdownMenuItem(
            //                     value: FloatingActionButtonLocation.startTop,
            //                     child: Text('startTop'),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             ListTile(
            //               title: Text('Mini FAB:'),
            //               trailing: Switch(
            //                 value: this._isFabMini,
            //                 onChanged: (bool val) {
            //                   setState(() => this._isFabMini = val);
            //                 },
            //               ),
            //             ),
            //             ListTile(
            //               title: Text('BottomAppBar notch:'),
            //               trailing: Switch(
            //                 value: this._isBottomBarNotched,
            //                 onChanged: (bool val) {
            //                   setState(() => this._isBottomBarNotched = val);
            //                 },
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   );
            Fluttertoast.showToast(msg: '设置功能开发中');
          },
        ),
      ),
      floatingActionButtonLocation: this._fabLocation,
      bottomNavigationBar: this._buildBottomAppBar(context),
    );
  }

  BottomAppBar _buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      shape: this._isBottomBarNotched ? CircularNotchedRectangle() : null,
      color: Theme.of(context).primaryColor,
      child: Row(
        children: <Widget>[
          // Bottom that pops up from the bottom of the screen.
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) => Card(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 90),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(20)),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  child: Stack(children: <Widget>[
                    GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      children: <Widget>[
                        Card(
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10)), //圆角值
                            clipBehavior: Clip.antiAlias,
                            child: Stack(children: <Widget>[
                              Center(
                                  child: IconButton(
                                icon: Icon(
                                  Icons.help,
                                  size: 70,
                                ),
                                onPressed: () =>
                                    Fluttertoast.showToast(msg: '设置功能开发中'),
                              ))
                            ])),
                        Card(
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)), //圆角值
                          clipBehavior: Clip.antiAlias,
                          child: Stack(children: <Widget>[
                            Image.asset(
                              "assets/images/bg2.png",
                              width: double.maxFinite,
                              height: double.maxFinite,
                              fit: BoxFit.cover,
                            )
                          ]),
                        ),
                        Card(
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)), //圆角值
                          clipBehavior: Clip.antiAlias,
                          child: Stack(children: <Widget>[
                            Image.asset(
                              "assets/images/bg2.png",
                              width: double.maxFinite,
                              height: double.maxFinite,
                              fit: BoxFit.cover,
                            )
                          ]),
                        ),
                      ],
                    ),
                    // ClipRect(
                    //     child: BackdropFilter(
                    //         //背景滤镜
                    //         filter: ImageFilter.blur(
                    //           sigmaX: 5.0,
                    //           sigmaY: 5.0,
                    //         ), //图片模糊过滤，横向竖向都设置5.0
                    //         child: Opacity(
                    //             opacity: 0.1, //透明度
                    //             child: Container(
                    //               decoration: BoxDecoration(
                    //                   color:
                    //                       Colors.grey.shade200), //盒子装饰器，模糊的颜色
                    //             ))))
                  ]),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () =>
                Fluttertoast.showToast(msg: 'Dummy search action.'),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () => Fluttertoast.showToast(msg: 'Dummy menu action.'),
          ),
        ],
      ),
    );
  }
}
