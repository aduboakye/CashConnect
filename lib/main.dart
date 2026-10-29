import 'package:cashconnect_fanancial_suite/Bussines%20ads%20hub/bussinesAds_page.dart';
import 'package:cashconnect_fanancial_suite/Expense%20Analytics/Expense_analytics_page.dart';
import 'package:cashconnect_fanancial_suite/Messaging%20and%20support/messaging_page.dart';
import 'package:cashconnect_fanancial_suite/TransferPage/cashpay_request_page.dart';
import 'package:cashconnect_fanancial_suite/TransferPage/transfer_Page.dart';
import 'package:cashconnect_fanancial_suite/loans%20and%20credit/loan_and_credit.dart';
import 'package:cashconnect_fanancial_suite/login%20and%20signup%20page/bankdetails.dart';
import 'package:cashconnect_fanancial_suite/login%20and%20signup%20page/bankpage.dart';
import 'package:cashconnect_fanancial_suite/saiving%20vault/saving_vault.dart';
import 'package:cashconnect_fanancial_suite/splashscreen%20page/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:cashconnect_fanancial_suite/login and signup page/login_page.dart';
import 'package:cashconnect_fanancial_suite/login and signup page/signup_page.dart';
import 'package:cashconnect_fanancial_suite/cashpay Dashboard/cashpay_dashboard.dart';
import 'package:cashconnect_fanancial_suite/TransferPage/cashpayTransferdashboard.dart';
import 'package:cashconnect_fanancial_suite/TransferPage/receiverTransfer_Page.dart';
import 'package:cashconnect_fanancial_suite/TransferPage/transferKeyboard_page.dart';
import 'package:cashconnect_fanancial_suite/TransferPage/receiverTransfer_Page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const CashpayRequestPage(),
    );
  }
}
