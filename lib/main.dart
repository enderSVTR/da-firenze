import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/counter_provider.dart';
import 'widgets/counter_display.dart';
import 'widgets/history_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      routes: {HistoryScreen.routeName: (_) => const HistoryScreen()},
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with History'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            tooltip: 'View History',
            onPressed: () {
              Navigator.pushNamed(context, HistoryScreen.routeName);
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset Counter',
            onPressed: () {
              context.read<CounterProvider>().reset();
            },
          ),
        ],
      ),
      body: Center(child: CounterDisplay(value: counter.value)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterProvider>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class HistoryScreen extends StatelessWidget {
  static const routeName = '/history';

  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final history = context.watch<CounterProvider>().history;

    return Scaffold(
      appBar: AppBar(title: const Text('History')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: HistoryList(history: history),
      ),
    );
  }
}
