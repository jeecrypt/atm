import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget{
  final String text;

  const FailureWidget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(color: Color(0x203827B4), height: 8),
        Container(
          alignment: Alignment.centerLeft,
          child: Container(),
        ),
        Container(
          padding: EdgeInsets.all(7),
          height: 130,
          child: Center(
            child: Text(text,
            textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE61EAD),
                fontSize: 20
              ),
            ),
          )
        ),
      ],
    );
  }
  
}