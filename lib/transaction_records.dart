import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yongle_page/transaction_card.dart';
import 'package:yongle_page/transaction_data.dart';

class TransactionRecords extends StatefulWidget {
  const TransactionRecords({super.key});

  @override
  State<TransactionRecords> createState() => _TransactionRecordsState();
}

class _TransactionRecordsState extends State<TransactionRecords> {
  final filters = const ['Today', 'Last 07 days', 'Last 30 days'];

  int selectedFilter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
          child: Column(
            children: [
              //header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/arrowback.png',
                    width: 13,
                    height: 23,
                  ),
                  const Text(
                    'Transaction Records',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff003b3d)),
                  ),
                  Image.asset(
                    'assets/images/dots.png',
                    width: 5,
                    height: 23,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int index = 0; index < filters.length; index++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = index;
                        });
                      },
                      child: Container(
                          height: 27,
                          // width: 80,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 0),
                          decoration: BoxDecoration(
                              color: selectedFilter == index
                                  ? const Color(0xff008D91)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(54)),
                          child: Center(
                              child: Text(filters[index],
                                  style: TextStyle(
                                      color: selectedFilter == index
                                          ? Colors.white
                                          : const Color(0xff008D91),
                                      fontSize: 12)))),
                    )
                ],
              ),

              //records
              Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: transactionData.length,
                      itemBuilder: (context, index) {
                        final data = transactionData[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/page${index + 1}');
                          },
                          child: TransactionCard(
                            amount: data['amount'] as int,
                            status: data['status'] as String,
                            time: data['time'] as String,
                            orderNo: data['orderNo'] as String,
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
