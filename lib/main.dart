import 'package:flutter/material.dart';
import 'package:iklimku/screens/home/home_page.dart';
import 'package:provider/provider.dart';

import 'models/city_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CityName>(
          create: (context) => CityName(),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
