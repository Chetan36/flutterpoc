import 'package:posforall_merchant/actions/index.dart';
import 'package:posforall_merchant/appstate/index.dart';
import 'package:posforall_merchant/models/user.model.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is LoginUser) {
    action.payload == null
        ? newState.userDetails =
            new UserModel(id: -1, contactNumber: '', emailId: '', password: '')
        : newState.userDetails = action.payload;
  } else if (action is ChangeActiveRoute) {
    newState.activeRoute = action.payload;
  }

  return newState;
}
