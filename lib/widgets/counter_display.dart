import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int value;

  const CounterDisplay({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$value',
      style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
    );
  }
}
