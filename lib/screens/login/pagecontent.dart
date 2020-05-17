import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:posforall_merchant/actions/index.dart';
import 'package:posforall_merchant/appstate/index.dart';
import 'package:posforall_merchant/models/login.model.dart';
import 'package:posforall_merchant/ui_components/applogo/index.dart';

class LoginPageContent extends StatefulWidget {
  @override
  _LoginPageContentState createState() => _LoginPageContentState();
}

class _LoginPageContentState extends State<LoginPageContent> {
  LoginModel loginData;

  @override
  void initState() {
    super.initState();
    setState(() {
      loginData = new LoginModel(contactNumber: '', password: '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      AppLogo(192.0, 192.0, Theme.of(context).accentColor),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 32.0),
                          child: Text(
                            'login credentials'.trim().toUpperCase(),
                            style: TextStyle(
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[400]),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          decoration: const InputDecoration(
                              hintText: 'Mobile Number',
                              hasFloatingPlaceholder: true,
                              counterText: ''),
                          onChanged: (text) {
                            setState(() {
                              loginData.contactNumber = text;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          maxLength: 10,
                          decoration: const InputDecoration(
                              hintText: 'Password',
                              hasFloatingPlaceholder: true,
                              counterText: ''),
                          onChanged: (text) {
                            setState(() {
                              loginData.password = text;
                            });
                          },
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                              child: RichText(
                            textAlign: TextAlign.center,
                            text: new TextSpan(
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.grey[400]),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text:
                                          'By continuing I confirm that I have read and agree to the '),
                                  new TextSpan(
                                      text: 'Terms & Conditions ',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color:
                                              Theme.of(context).primaryColor)),
                                  new TextSpan(text: 'and the '),
                                  new TextSpan(
                                      text: 'Privacy Policy',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color:
                                              Theme.of(context).primaryColor)),
                                  new TextSpan(text: '.')
                                ]),
                          ))),
                    ],
                  ),
                )),
                Container(
                  height: 46.0,
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                  width: double.infinity,
                  child: FlatButton(
                      child: Text(
                        'Continue'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        if (loginData.contactNumber == '' ||
                            loginData.password == '') {
                          return;
                        }
                        try {
                          StoreProvider.of<AppState>(context)
                              .dispatch(LoginUser(loginData));
                          Navigator.pushNamedAndRemoveUntil(context,
                              '/home', (Route<dynamic> route) => false);
                        } catch (e) {
                          print(e);
                        }
                      },
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: new BorderRadius.circular(30.0))),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
