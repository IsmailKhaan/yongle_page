import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yongle_page/counter_model.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Page 2',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.purple[200],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter : ${value.count.toString()}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final counter = context.read<CounterModel>();
            counter.increment();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
