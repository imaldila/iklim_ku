import '../services/weather.dart';

class WeatherData {
  WeatherModel weather = WeatherModel();
  String? cityName, weatherIcon;
  int? temperature;

  void updateData(dynamic weatherData) {
    if (weatherData == null) {
      temperature = 0;
      cityName = 'Unknown';
      weatherIcon = 'Error';

      return;
    }
    double temp = weatherData['main']['temp'];
    temperature = temp.toInt();
    cityName = weatherData['name'];
    var condition = weatherData['weather'][0]['id'];
    weatherIcon = weather.getWeatherIcon(condition);
  }
}
