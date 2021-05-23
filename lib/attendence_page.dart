import 'package:att_test/CheckedBoxList.dart';
import 'package:att_test/ListTile.dart';
import 'package:flutter/material.dart';

class AttendenceScr extends StatefulWidget {
  static String id = 'attendence_page';
  final List<int> rollNo = [2016239009, 2016239007, 2016239002, 2016239008];
  @override
  _AttendenceScrState createState() => _AttendenceScrState();
}

class _AttendenceScrState extends State<AttendenceScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Attendence Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () {}, child: Text('Subject')),
                  TextButton(onPressed: () {}, child: Text('Date')),
                ],
              )
            ],
          ),
          Expanded(child: MyListEX()),
          TextButton(onPressed: () {}, child: Text('Submit')),
        ],
      ),
    );
  }
}
