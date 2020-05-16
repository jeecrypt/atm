import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget{
  final String title;
  final String suffix;
  final List<Color> gradient;
  final Function callback;

  const InputWidget({Key key, this.gradient, this.title, this.suffix, this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: gradient
        )          
      ),
      child: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
              Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
              TextField(
                onChanged: (value){
                  callback(double.parse(value));
                },
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  suffixText: suffix,
                  suffixStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 28
                  ),
                  enabledBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Colors.white),   
                  ),  
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color:  Colors.white,
                  fontSize: 28,
                ),
              )
            ]
          )
        )
      )
    );
  }
}