import 'package:att_test/rounded_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class MyListEX extends StatefulWidget {
  const MyListEX({Key key}) : super(key: key);

  @override
  _MyListEXState createState() => _MyListEXState();
}

class _MyListEXState extends State<MyListEX> {
  Set l = {};
  var distl = [];
  final List<int> rollNo = [
    2016239001,
    2016239002,
    2016239003,
    2016239004,
    2016239005,
    2016239006,
    2016239007,
    2016239008,
    2016239009,
    2016239010,
    2016239011,
    2016239012,
    2016239013,
    2016239014,
    2016239015,
    2016239016,
    2016239017,
    2016239018,
    2016239019,
    2016239020,
    2016239021,
    2016239022,
    2016239023,
    2016239024,
    2016239025,
    2016239026,
    2016239027,
    2016239028,
    2016239029,
    2016239030,
    2016239031,
    2016239032,
    2016239033,
    2016239034,
    2016239035,
    2016239036,
    2016239037,
    2016239038,
    2016239039,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 39,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red, Colors.blue],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: const Offset(3.0, 3.0),
                    blurRadius: 10,
                    spreadRadius: 2.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: SizedBox(
                height: 60,
                child: ListTile(
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIcnBt(
                        icon: Mdi.alphaPCircle,
                        onPressed: () {
                          setState(() {
                            if (l.contains(rollNo[index])) {
                              l.remove(rollNo[index]);
                            } else {
                              l.add(rollNo[index]);
                            }
                            print(l);
                          });
                        },
                      ),
                    ],
                  ),
                  leading: Icon(Icons.account_circle_outlined),
                  title: Row(
                    children: [
                      Text('${rollNo[index]}'),
                      if (l.contains(rollNo[index]))
                        Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
