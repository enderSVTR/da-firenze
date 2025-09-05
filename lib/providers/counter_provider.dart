import 'package:flutter/foundation.dart';
import '../models/counter_model.dart';

class CounterProvider extends ChangeNotifier {
  int _value = 0;
  final List<CounterModel> _history = [];

  int get value => _value;
  List<CounterModel> get history => List.unmodifiable(_history);

  void increment() {
    _value++;
    _history.add(CounterModel(value: _value, timestamp: DateTime.now()));
    notifyListeners();
  }

  void reset() {
    _value = 0;
    _history.clear();
    notifyListeners();
  }
}
