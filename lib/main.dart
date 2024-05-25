import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yongle_page/counter_model.dart';
import 'package:yongle_page/page1.dart';
import 'package:yongle_page/page2.dart';
import 'package:yongle_page/transaction_records.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CounterModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yongle page',
      home: const TransactionRecords(),
      routes: {
        '/page1': (context) => const Page1(),
        '/page2': (context) => const Page2(),
      },
    );
  }
}
