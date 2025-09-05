import 'package:flutter/material.dart';
import '../models/counter_model.dart';

class HistoryList extends StatelessWidget {
  final List<CounterModel> history;

  const HistoryList({Key? key, required this.history}) : super(key: key);

  String _formatTime(DateTime dt) {
    return '${dt.hour.toString().padLeft(2, '0')}:'
        '${dt.minute.toString().padLeft(2, '0')}:'
        '${dt.second.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    if (history.isEmpty) {
      return const Center(child: Text('No history yet.'));
    }
    return ListView.builder(
      itemCount: history.length,
      itemBuilder: (context, index) {
        final item = history[index];
        return ListTile(
          leading: const Icon(Icons.history),
          title: Text('Value: ${item.value}'),
          subtitle: Text('At: ${_formatTime(item.timestamp)}'),
        );
      },
    );
  }
}
