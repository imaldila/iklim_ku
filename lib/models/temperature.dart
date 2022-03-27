import 'package:flutter/material.dart';

class Temperature extends ChangeNotifier {
  int? _temp;

  int? get temp => _temp;

  getTemp(int value) {
    _temp = value;
    notifyListeners();
  }

  void updateTemp(dynamic weatherData) {
    if (weatherData == null) {
      _temp = 0;
      return;
    }
    double temp = weatherData['main']['temp'];
    _temp = temp.toInt();
    notifyListeners();
  }
}
