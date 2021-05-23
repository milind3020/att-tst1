import 'package:flutter/material.dart';

class MB extends StatelessWidget {
  MB({this.colour, this.txt, this.onPress});
  final Color colour;
  final String txt;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      color: colour,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onPress,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          txt,
        ),
      ),
    );
  }
}
