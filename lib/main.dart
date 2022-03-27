import 'package:flutter/material.dart';
import 'package:iklimku/models/temperature.dart';
import 'package:iklimku/screens/home/home_page.dart';
import 'package:provider/provider.dart';

import 'models/data_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataModel>(
          create: (context) => DataModel(),
        ),
        ChangeNotifierProvider<Temperature>(
          create: (context) => Temperature(),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
