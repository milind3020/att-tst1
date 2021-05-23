import 'package:att_test/const.dart';
import 'package:att_test/option_screen.dart';
import 'package:att_test/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _visible = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Hero(
                  //   tag: 'logo',
                  //   child: Container(
                  //     height: 200,
                  //     child: Image.asset('assets/logo3.png'),
                  //   ),
                  // ),
                  SizedBox(
                    height: 200,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {},
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter Your Email'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    obscuringCharacter: '*',
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {},
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter Your Password',
                      prefixIcon: Icon(Icons.https_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MB(
                    txt: 'Log In',
                    colour: Colors.blueAccent,
                    onPress: () {
                      Navigator.pushNamed(context, Optscr.id);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
