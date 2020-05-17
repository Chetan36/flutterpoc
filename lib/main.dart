import 'package:flutter/material.dart';
import 'package:posforall_merchant/appstate/index.dart';
import 'package:posforall_merchant/reducers/index.dart';
import 'package:posforall_merchant/screens/index.dart';
import 'package:posforall_merchant/services/localstorage/index.dart';
import 'package:redux/redux.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final _initialState = AppState(userDetails: null, consumers: null, selectedConsumer: null, activeRoute: '');
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);

  // Initialize Localstorage (SharedPrefences)
  await LocalStorageService.initializeLocalstorage();

  runApp(MainApp(store: _store,));
}
