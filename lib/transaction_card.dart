import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final int amount;
  final String status;
  final String time;
  final String orderNo;

  const TransactionCard(
      {super.key,
      required this.amount,
      required this.status,
      required this.time,
      required this.orderNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xff003B3D)))),
      padding: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 8),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'IM Sports',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff003B3D)),
              ),
              Image.asset(
                'assets/images/arrowforward.png',
                width: 12,
                height: 24,
              ),
              const Text(
                'Center Wallet',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff003B3D)),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    amount.toString(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffEA4855)),
                  ),
                  Container(
                    width: 64,
                    height: 17,
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: status == 'Success'
                            ? const Color(0xff25AB32)
                            : const Color(0xffFF9900),
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                        child: Text(status,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12))),
                  ),
                ],
              ),
              Text(
                time.toString(),
                style: const TextStyle(fontSize: 12, color: Color(0xff003B3D)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order number: $orderNo',
                style: const TextStyle(fontSize: 12, color: Color(0xff304258)),
              ),
              Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2, color: Color(0xff00A9F2)))),
                  child: const Text(
                    'copy',
                    style: TextStyle(fontSize: 12, color: Color(0xff959BA1)),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
