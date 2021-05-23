import 'package:att_test/attendence_page.dart';
import 'package:att_test/option_screen.dart';
import 'package:att_test/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(Attendee());
}

class Attendee extends StatelessWidget {
  const Attendee({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomScreen.id, routes: {
      WelcomScreen.id: (context) => WelcomScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      Optscr.id: (context) => Optscr(),
      AttendenceScr.id:(context)=>AttendenceScr(),
    });
  }
}
