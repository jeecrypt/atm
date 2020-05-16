import 'package:flutter/material.dart';
import 'components/Pay.dart';
import 'models/Bill.dart';
import 'pages/BankPage.dart';

Pay pay = Pay();

void main() {
  runApp(MyApp());

  // Запрвляем банкомат
  pay.add = Bill(denomination: 100,   count: 50);
  pay.add = Bill(denomination: 200,   count: 100);
  pay.add = Bill(denomination: 500,   count: 5);
  pay.add = Bill(denomination: 1000,  count: 10);
  pay.add = Bill(denomination: 2000,  count: 100);
  pay.add = Bill(denomination: 5000,  count: 10);
}
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ATM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          platform: TargetPlatform.iOS
        ),
        home: BankPage(),
      );
    }
  }
  

