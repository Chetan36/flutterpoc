import 'dart:async';

import 'package:flutter/material.dart';
import 'package:posforall_merchant/services/localstorage/index.dart';
import 'package:posforall_merchant/ui_components/applogo/index.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(Duration(seconds: 2), () {
      LocalStorageService.localstorage.setString('APP_NAME', 'POSforAll Merchant');
      Navigator.pushNamedAndRemoveUntil(context, '/login', (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppLogo(192.0, 192.0, Theme.of(context).accentColor)
        ],
      ),
    );
  }
}
