import 'package:posforall_merchant/models/login.model.dart';
import 'package:posforall_merchant/models/user.model.dart';

class DummyData {
   static List<UserModel> users = [
    new UserModel(id: 1, firstName: 'Priyabrata', lastName: 'Pati', contactNumber: '9583145558', emailId: 'priyabrata.pati36@gmail.com', password: 'hello'),
    new UserModel(id: 2, firstName: 'Chetan', lastName: 'Pati', contactNumber: '8763402444', emailId: 'priyabrata.pati36@outlook.com', password: 'hello'),
    new UserModel(id: 3, firstName: 'Priyabrata', lastName: 'Sahoo', contactNumber: '9988776655', emailId: 'priyabrata.pati@icloud.com', password: 'hello'),
    new UserModel(id: 4, firstName: 'Chetan', lastName: 'Sahoo', contactNumber: '9887665443', emailId: 'priyabrata.pati@apizzy.in', password: 'hello'),
    new UserModel(id: 5, firstName: 'Monika', lastName: 'Sahoo', contactNumber: '9998887776', emailId: 'priyabrata.pati@kare4u.in', password: 'hello'),
  ];

  static UserModel getUserInLogin(LoginModel loginData) {
    UserModel dbUser;
    for (var user in users) {
      if (user.contactNumber == loginData.contactNumber && user.password == loginData.password) {
        dbUser = user;
      }
    }
    return dbUser;
  }
}
