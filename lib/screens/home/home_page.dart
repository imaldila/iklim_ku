import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/city_name.dart';
import 'components/search_city.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: [
                const SearchCity(),
                Text(context.read<CityName>().cityName)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
