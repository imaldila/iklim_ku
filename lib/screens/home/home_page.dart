import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../models/city_name.dart';
import '../../services/location.dart';
import 'components/search_city.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final location = Location();
  @override
  void initState() {
    super.initState();
    // print(location.determinePosition());
  }

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchCity(),
                // Text(context.read<CityName>().cityName),
                const SizedBox(height: 16),
                Text(
                  'Sunny Day Walk',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Center(
                  child: SvgPicture.asset(
                    'assets/images/Cloudy.svg',
                  ),
                ),
                Center(
                  child: Text(
                    'Cloudy',
                    style: GoogleFonts.inter(fontSize: 16),
                  ),
                ),
                const Spacer(),
                Text(
                  'Bandung',
                  style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  '24*',
                  style: GoogleFonts.inter(
                      fontSize: 44, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () {
                      print(location.getCurrentLocation());
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
