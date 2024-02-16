import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  Myapp({Key? key}) : super(key: key);

  final ValueNotifier<int> notifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Value Notifier'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Value',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              minimumSize: const Size(100, 50),
            ),
            onPressed: () {
              notifier.value++;
            },
            child: const Icon(Icons.plus_one),
          ),
          ValueListenableBuilder(
            valueListenable: notifier,
            builder: (context, value, _) {
              return Text(value.toString());
            },
          ),
        ],
      ),
    );
  }
}


