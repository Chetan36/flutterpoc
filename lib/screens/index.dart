import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posforall_merchant/appstate/index.dart';
import 'package:posforall_merchant/screens/descriptor/index.dart';
import 'package:posforall_merchant/screens/home/index.dart';
import 'package:posforall_merchant/screens/login/index.dart';
import 'package:posforall_merchant/screens/register/index.dart';
import 'package:posforall_merchant/screens/splash/index.dart';
import 'package:redux/redux.dart';

class MainApp extends StatelessWidget {
  final Store<AppState> store;

  MainApp({this.store});

  final GlobalKey<NavigatorState> _scaffoldKey =
      new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _scaffoldKey,
        title: 'POSforAll Merchant',
        theme: ThemeData(
            primaryColor: Colors.orange, accentColor: Colors.grey[200]),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/descriptor': (context) => DescriptorScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
