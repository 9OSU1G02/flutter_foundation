import 'dart:math';
import 'package:flutter/foundation.dart';

class RandomizedChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();
  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;
  int minimum = 0, maximum = 0;
  void generateRandomNumber() {
    _generatedNumber = _randomGenerator.nextInt(maximum - minimum) + minimum;
    notifyListeners();
  }
}
