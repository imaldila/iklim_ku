import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:iklimku/constants.dart';

import 'package:iklimku/models/weather_data.dart';
import 'package:iklimku/services/networking.dart';
import 'package:iklimku/services/weather.dart';
import 'package:provider/provider.dart';

import '../../models/data_model.dart';
import '../../services/location.dart';
import 'components/search_city.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeatherModel weather = WeatherModel();
    WeatherData _weatherData = WeatherData();
    final dataModel = context.watch<DataModel>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgCloudy.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchCity(),
                // Text(context.read<CityName>().cityName),
                const SizedBox(height: 16),
                Text(
                  'Sunny Day Walk',
                  style: kTitleDesc,
                ),
                const Spacer(),
                Center(
                  child: SvgPicture.asset(
                    'assets/images/Cloudy.svg',
                  ),
                ),
                Center(
                  child: Text(
                    dataModel.weatherStatus,
                    style: kWeatherStats,
                  ),
                ),
                const Spacer(),
                Text(
                  dataModel.cityName,
                  style: kCityName,
                ),
                Text(
                  '${dataModel.temp} ° ',
                  style: kTemp,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () async {
                      print(dataModel.weatherIcon.toList());
                    },
                    child: Text('Button')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
