import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWiget extends StatelessWidget{
  final String title;
  final double padding;
  final Function callback;

  const ButtonWiget({Key key, this.title, this.padding, this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(80, padding, 80, padding),
      height: 60,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: (){
          callback();
        },
        color: Color(0xffE61EAD),
        child: Text(title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}