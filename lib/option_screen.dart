import 'package:att_test/alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//const col = Color(0xFF1D1E33);
const col = Color(0X00FFFFFF);
const icol = Color(0xFF111328);
enum select {
  take_att,
  retrieve_att,
}

class Optscr extends StatefulWidget {
  static String id = 'option_screen';
  @override
  _OptscrState createState() => _OptscrState();
}

class _OptscrState extends State<Optscr> {
  select yselect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('Welcome Faculty'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AlertSnd();
                  }));
                },
                colour: col,
                cardChild: IconContent(
                    icn: FontAwesomeIcons.bookOpen, txt: 'Record Attendence'),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  Navigator.pop(context);
                },
                colour: col,
                cardChild: IconContent(
                    icn: FontAwesomeIcons.solidWindowClose,
                    txt: 'Retrieve Attendence'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardChild, this.onPress, this.colour});
  Function onPress;
  final Widget cardChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 200,
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({@required this.icn, @required this.txt});
  final IconData icn;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icn,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
