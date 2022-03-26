import 'package:flutter/material.dart';

class CityName extends ChangeNotifier {
  String _cityName = '';

  String get cityName => _cityName;

  getCityName(String value) {
    _cityName = value;
    notifyListeners();
  }
}
