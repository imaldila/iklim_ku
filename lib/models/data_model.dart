import 'dart:collection';

import 'package:flutter/material.dart';

class DataModel extends ChangeNotifier {
  String _cityName = '', _weatherStatus = '';
  int _temp = 0;
  final List<String> _weatherIcons = [
    'assets/images/Rain&Thunderstorm.svg',
    'assets/images/Rain&Sun.svg'
  ];

  String? _selectedIcon;
  UnmodifiableListView get weatherIcon => UnmodifiableListView(_weatherIcons);

  String? get selectedIcon => _selectedIcon;
  set selectedIcon(final String? weatherIcon) {
    _selectedIcon = weatherIcon;
    notifyListeners();
  }

  String get cityName => _cityName;
  String get weatherStatus => _weatherStatus;
  // List<String> get weahterIcon => _weatherIcon;
  int get temp => _temp;

  getCityName(String value) {
    _cityName = value;
    notifyListeners();
  }

  getTemp(int value) {
    _temp = value;
    notifyListeners();
  }

  getWeatherStatus(String value) {
    _weatherStatus = value;
    notifyListeners();
  }

  void updateCityName(dynamic weatherData) {
    if (weatherData == null) {
      _cityName = 'Unknown';
      _temp = 0;
      _weatherStatus = 'Error';
      return;
    }
    _cityName = weatherData['name'];
    double temp = weatherData['main']['temp'];
    _temp = temp.toInt();
    String status = weatherData['weather'][0]['main'];
    _weatherStatus = status;
    notifyListeners();
  }
}
