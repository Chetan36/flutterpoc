import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posforall_merchant/appstate/index.dart';

class AppDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return UserAccountsDrawerHeader(
          accountName: Text(state.userDetails.firstName + ' ' + state.userDetails.lastName),
          accountEmail: Text(state.userDetails.emailId),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                ? Colors.orange[200]
                : Colors.white,
            child: Text(
              state.userDetails.firstName[0] + state.userDetails.lastName[0],
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        );
      },
    );
  }
}
