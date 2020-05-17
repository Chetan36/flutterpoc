import 'package:flutter/material.dart';
import 'package:posforall_merchant/screens/login/pagecontent.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Merchant Login',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
      ),
      body: LoginPageContent(),
    );
  }
}
