import 'package:dividend_app/presentation/screens/add_dividend_company.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financials',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddDividendCompany(),
    );
  }
}

