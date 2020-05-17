import 'package:posforall_merchant/models/login.model.dart';
import 'package:posforall_merchant/models/user.model.dart';
import 'package:posforall_merchant/resources/dummy_data.dart';

class LoginUser {
  final LoginModel loginData;
  UserModel payload;
  
  LoginUser(this.loginData) {
    this.payload = DummyData.getUserInLogin(loginData);
  }
}

class ChangeActiveRoute {
  final String payload;

  ChangeActiveRoute(this.payload);
}
