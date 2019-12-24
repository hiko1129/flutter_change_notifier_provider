import 'package:flutter/widgets.dart';
import 'package:counter_app/models/counter.dart';

class CounterContext with ChangeNotifier {
  CounterContext(): counter = Counter(0);

  final Counter counter;

  increment() {
    counter.increment();
    notifyListeners();
  }

  decrement() {
    counter.decrement();
    notifyListeners();
  }
}