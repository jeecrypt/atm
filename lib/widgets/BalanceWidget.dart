

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Bill.dart';
import '../widgets/TitleWidget.dart';

class BalanceWiget extends StatelessWidget{
  final String title;
  final List<Bill> bill;

  const BalanceWiget({Key key, this.bill, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(color: Color(0x203827B4), height: 8),
        Container(
          alignment: Alignment.centerLeft,
          child: TitleWidget(title: title),
        ),
        Container(
          padding: EdgeInsets.all(7),
          height: 130,
          child: GridView.count(
            primary: false,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 7,
            mainAxisSpacing: 7,
            crossAxisCount: 2,
            childAspectRatio: 8.5,
            children: _gridItems()
          )
        ),
      ],
    );
  }
  List<Widget> _gridItems(){
    bill.sort((a, b) => a.denomination.compareTo(b.denomination));
    return bill.map<Widget>((e) => Text(e.i, style:  TextStyle(color: Color(0xFF3827B4), fontSize: 16),)).toList();
  }
}