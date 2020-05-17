import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posforall_merchant/appstate/index.dart';

class OutstandingFragment extends StatefulWidget {
  @override
  _OutstandingFragmentState createState() => _OutstandingFragmentState();
}

class _OutstandingFragmentState extends State<OutstandingFragment> {
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