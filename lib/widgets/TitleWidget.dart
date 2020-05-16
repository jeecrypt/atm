import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget{
  final String title;
  const TitleWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Text(title,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16
        )
      )
    );
  }
}