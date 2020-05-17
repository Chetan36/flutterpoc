import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posforall_merchant/appstate/index.dart';

class RegisterPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Container(

          );
        },
      );
  }
}