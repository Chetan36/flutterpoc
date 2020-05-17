import 'package:flutter/material.dart';
import 'package:posforall_merchant/screens/register/pagecontent.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Merchant'),
        automaticallyImplyLeading: false,
      ),
      body: RegisterPageContent()
    );
  }
}
