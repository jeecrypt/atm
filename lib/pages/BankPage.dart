
import 'package:atm/widgets/FailureWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import '../models/Bill.dart';
import '../widgets/ButtonWidget.dart';
import '../widgets/InputWidget.dart';
import '../widgets/WavesWidget.dart';
import '../widgets/BalanceWidget.dart';

class BankPage extends StatefulWidget{
  @override
  _BankPageState createState() => _BankPageState();
}

class _BankPageState extends State<BankPage>{
  List<Color> _gradient = [Color(0xFF3827B4), Color(0xFF6C18A4)];
  double _sum;
  List<Bill> _bill;
  
  @override
  void initState() {
    _sum = 0;
    _bill = null;
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            Text('ATM')
          ],
        ),
        elevation: 15.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: _gradient
            )          
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            InputWidget(gradient: _gradient, title: 'Введите сумму', suffix: 'руб',callback: _onInput), // ввод суммы
            WavesTopWidget(gradient: _gradient),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ButtonWiget(title: 'Выдать сумму', padding: 30, callback: _onPressed), // кнопка
                  _bill != null?
                  BalanceWiget(bill: _bill, title: 'Банкомат выдал следующие купюры'): // выданные купюры
                  FailureWidget(text: 'Банкомат не может выдать,\r\nзапрашиваемую сумму'), // ошибка
                  BalanceWiget(bill: pay.balance, title: 'Баланс банкомата'), // баланс банкомата
                ],
              )
            ),
            WavesBottumWidget(),
          ],
        ),
      ),
    );
  }

  _onInput(value){
    print('$value');
    setState(() {
      _sum = value;
    });
  }

  _onPressed(){
    print(_sum);
    setState(() {
      _bill = pay.pay(_sum);
    });
  }
  
}