import 'package:flutter/material.dart';
import 'package:posforall_merchant/fragments/customers/index.dart';
import 'package:posforall_merchant/fragments/error/index.dart';
import 'package:posforall_merchant/fragments/helpandfeedback/index.dart';
import 'package:posforall_merchant/fragments/outstanding/index.dart';
import 'package:posforall_merchant/fragments/sales/index.dart';
import 'package:posforall_merchant/fragments/settings/index.dart';
import 'package:posforall_merchant/models/draweritem.model.dart';
import 'package:posforall_merchant/screens/home/drawerheader.dart';
import 'package:posforall_merchant/screens/home/drawerlistitem.dart';

class HomeScreen extends StatefulWidget {
  final topDrawerItems = [
    DrawerItem(1, 'Customers', Icons.people),
    DrawerItem(2, 'Sales', Icons.attach_money),
    DrawerItem(3, 'Outstanding', Icons.attach_money),
  ];

  final bottomDrawerItems = [
    DrawerItem(4, 'Settings', Icons.settings),
    DrawerItem(5, 'Help and Feedback', Icons.help),
  ];

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedDrawerId;
  String _appbarTitle;

  @override
  void initState() {
    super.initState();
    this._selectedDrawerId = widget.topDrawerItems[0].id;
    this._appbarTitle = widget.topDrawerItems[0].title;
  }

  _getSelectedItemFragment(int id) {
    switch (id) {
      case 1:
        return new CustomersFragment();

      case 2:
        return new SalesFragment();

      case 3:
        return new OutstandingFragment();

      case 4:
        return new SettingsFragment();

      case 5:
        return new HelpAndFeedbackFragment();

      default:
        return new ErrorFragment();
    }
  }

  _selectItem(DrawerItem listItem) {
    setState(() {
      _selectedDrawerId = listItem.id;
      _appbarTitle = listItem.title;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var topDrawerOptions = <Widget>[];
    var bottomDrawerOptions = <Widget>[];

    topDrawerOptions.add(AppDrawerHeader());

    for (var i = 0; i < widget.topDrawerItems.length; i++) {
      var listItem = widget.topDrawerItems[i];
      print("Building list item " + listItem.title);
      topDrawerOptions.add(new DrawerListItem(listItem, _selectItem));
    }

    bottomDrawerOptions.add(Divider());
    for (var i = 0; i < widget.bottomDrawerItems.length; i++) {
      var listItem = widget.bottomDrawerItems[i];
      print("Building list item " + listItem.title);
      bottomDrawerOptions.add(new DrawerListItem(listItem, _selectItem));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_appbarTitle, style: TextStyle(color: Colors.white)),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: topDrawerOptions,
              ),
            ),
            Container(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                        child: Column(
                      children: bottomDrawerOptions,
                    ))))
          ],
        ),
      ),
      body: _getSelectedItemFragment(_selectedDrawerId),
    );
  }
}
