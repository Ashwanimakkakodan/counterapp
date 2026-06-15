import 'package:counterapp/countmodel.dart';
import 'package:flutter/widgets.dart';

class Countcontroller extends ChangeNotifier {
  final Countmodel _count = Countmodel(0);
  Countmodel get count => _count;
  void increment() {
    _count.count++;
    notifyListeners();
  }

  void decrement() {
    _count.count--;
    notifyListeners();
  }

  void reset() {
    _count.count = 0;
    notifyListeners();
  }
}
