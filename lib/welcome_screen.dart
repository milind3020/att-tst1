import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:att_test/login_page.dart';
import 'package:att_test/round_button.dart';
import 'package:flutter/material.dart';

class WelcomScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomScreenState createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
      //upperBound: 100,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: animation.value,

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.red],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('assets/logo3.png'),
                      height: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Attendee',
                          textStyle: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MB(
                  txt: 'Log In',
                  colour: Colors.blueAccent,
                  onPress: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MB(
                  txt: 'Register',
                  colour: Colors.blueAccent,
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
