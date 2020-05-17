import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posforall_merchant/appstate/index.dart';
import 'package:posforall_merchant/services/localstorage/index.dart';

class CustomersFragment extends StatefulWidget {
  @override
  _CustomersFragmentState createState() => _CustomersFragmentState();
}

class _CustomersFragmentState extends State<CustomersFragment> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Container(
          child: Center(child: Text(LocalStorageService.localstorage.getString('APP_NAME')),),
        );
      },
    );
  }
}