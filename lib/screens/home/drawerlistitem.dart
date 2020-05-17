import 'package:flutter/material.dart';
import 'package:posforall_merchant/models/draweritem.model.dart';

typedef void MyCallback(DrawerItem item);

class DrawerListItem extends StatelessWidget {
  final DrawerItem _listItem;
  final MyCallback _selectItem;

  DrawerListItem(this._listItem, this._selectItem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(_listItem.icon),
        title: Text(_listItem.title),
        onTap: () {
          _selectItem(_listItem);
        },
      );
  }
}