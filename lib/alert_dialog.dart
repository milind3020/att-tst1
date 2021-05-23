import 'dart:ui';
import 'package:att_test/attendence_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertSnd extends StatefulWidget {
  const AlertSnd({Key key}) : super(key: key);

  @override
  _AlertSndState createState() => _AlertSndState();
}

class _AlertSndState extends State<AlertSnd> {
  DateTime datel;
  static var date1 = DateTime.now();
  var fDate = "${date1.day}-${date1.month}-${date1.year}";
  String _chosenVal;
  @override
  Widget build(BuildContext context) {
    return new Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 0,
      backgroundColor: Colors.white,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                    child: DropdownButton<String>(
                        focusColor: Colors.white,
                        value: _chosenVal,
                        style: TextStyle(color: Colors.black),
                        items: <String>[
                          'android',
                          'IOS',
                          'Flutter',
                          'Node',
                          'Java',
                          'Python',
                          'PHP',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(
                          'Choose A Subject',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _chosenVal = value;
                          });
                        })),
                SizedBox(
                  height: 50,
                ),
                Text(datel == null ? 'Choose Date' : date1.toString()),
                DropdownButton<DateTime>(
                  hint: Text('Choose a Date'),
                  elevation: 5,
                  items: ['Choose a Date']
                      .map((e) => DropdownMenuItem<DateTime>(child: Text(e)))
                      .toList(),
                  onChanged: (DateTime value) {
                    setState(() {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2099))
                          .then((date) {
                        setState(() {
                          datel = date;
                        });
                      });
                    });
                  },
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AttendenceScr.id);
                    },
                    child: Text('Submit')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
