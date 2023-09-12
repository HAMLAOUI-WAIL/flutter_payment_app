// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_payment_app/pages/home_screen.dart';
import 'package:flutter_payment_app/pages/payment_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/addpayment': (context) => const PaymentPage(),
      },
    );
  }
}
