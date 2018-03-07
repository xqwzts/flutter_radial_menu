import 'package:flutter/material.dart';
import 'package:flutter_radial_menu/flutter_radial_menu.dart';

enum MenuOptions {
  unread,
  share,
  archive,
  delete,
  backup,
  copy,
}

void main() {
  GlobalKey<RadialMenuState> _menuKey = new GlobalKey<RadialMenuState>();

  final List<RadialMenuItem<MenuOptions>> items = <RadialMenuItem<MenuOptions>>[
    new RadialMenuItem<MenuOptions>(
      value: MenuOptions.unread,
      child: new Icon(
        Icons.markunread,
      ),
      iconColor: Colors.white,
      backgroundColor: Colors.blue[400],
      tooltip: 'unread',
    ),
    new RadialMenuItem<MenuOptions>(
      value: MenuOptions.share,
      child: new Icon(
        Icons.share,
      ),
      iconColor: Colors.white,
      backgroundColor: Colors.green[400],
    ),
    new RadialMenuItem<MenuOptions>(
      value: MenuOptions.archive,
      child: new Icon(
        Icons.archive,
      ),
      iconColor: Colors.white,
      backgroundColor: Colors.yellow[400],
    ),
    new RadialMenuItem<MenuOptions>(
      value: MenuOptions.delete,
      child: new Icon(
        Icons.delete,
      ),
      iconColor: Colors.white,
      backgroundColor: Colors.red[400],
    ),
    new RadialMenuItem<MenuOptions>(
      value: MenuOptions.backup,
      child: new Icon(
        Icons.backup,
      ),
      iconColor: Colors.white,
      backgroundColor: Colors.black,
    ),
    new RadialMenuItem<MenuOptions>(
      value: MenuOptions.copy,
      child: new Icon(
        Icons.content_copy,
      ),
      iconColor: Colors.white,
      backgroundColor: Colors.indigo[400],
    ),
  ];

  void _onItemSelected(MenuOptions value) {
    print(value);
  }

  runApp(
    new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new RadialMenu(
            key: _menuKey,
            items: items,
            radius: 100.0,
            onSelected: _onItemSelected,
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.restore),
          onPressed: () => _menuKey.currentState.reset(),
        ),
      ),
    ),
  );
}
