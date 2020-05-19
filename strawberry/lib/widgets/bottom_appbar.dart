/*
 * -> Author : Akko
 * -> Date : 2020-05-19 21:54:49
 * -> LastEditTime : 2020-05-20 01:27:44
 * -> LastEditors : Akko
 * -> Description : 接口=>HomeBottomAppBar
 * -> FilePath : \strawberry\lib\widgets\bottom_appbar.dart
 * -> Copyright  © 2020 Akko All rights reserved.
 */
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
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("test"),
      floatingActionButton: FloatingActionButton(
        // child: Icon(Icons.add),
        mini: this._isFabMini,
        onPressed: () => Fluttertoast.showToast(msg: 'Tap'),
        child: GestureDetector(
          child: Container(
            child: Icon(Icons.add),
          ),
          onLongPress: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) => Card(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 90),
                child: Container(
                  height: 500,
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      ListTile(
                        title: Text('FloatingActionButton position:'),
                        trailing: DropdownButton<FloatingActionButtonLocation>(
                          value: this._fabLocation,
                          onChanged: (FloatingActionButtonLocation newVal) {
                            if (newVal != null) {
                              setState(() => this._fabLocation = newVal);
                            }
                          },
                          items: [
                            DropdownMenuItem(
                              value: FloatingActionButtonLocation.centerFloat,
                              child: Text('centerFloat'),
                            ),
                            DropdownMenuItem(
                              value: FloatingActionButtonLocation.endFloat,
                              child: Text('endFloat'),
                            ),
                            DropdownMenuItem(
                              value: FloatingActionButtonLocation.centerDocked,
                              child: Text('centerDocked'),
                            ),
                            DropdownMenuItem(
                              value: FloatingActionButtonLocation.endDocked,
                              child: Text('endDocked'),
                            ),
                            DropdownMenuItem(
                              value: FloatingActionButtonLocation.miniStartTop,
                              child: Text('miniStartTop'),
                            ),
                            DropdownMenuItem(
                              value: FloatingActionButtonLocation.startTop,
                              child: Text('startTop'),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text('Mini FAB:'),
                        trailing: Switch(
                          value: this._isFabMini,
                          onChanged: (bool val) {
                            setState(() => this._isFabMini = val);
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('BottomAppBar notch:'),
                        trailing: Switch(
                          value: this._isBottomBarNotched,
                          onChanged: (bool val) {
                            setState(() => this._isBottomBarNotched = val);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
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
                child: Container(
                  height: 500,
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
            // onLongPress: () => Fluttertoast.showToast(msg: 'Setting'), //长按
          ),
        ],
      ),
    );
  }
}
