import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class RoundIcnBt extends StatelessWidget {
  RoundIcnBt({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;
  // var colour = Colors.red;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      hoverColor: Colors.green,
      // onHighlightChanged: true,
      constraints: BoxConstraints.tightFor(
        width: 45,
        height: 45,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),

      elevation: 10.0,
      highlightColor: Colors.green,
      child: Icon(icon),
    );
  }
}
