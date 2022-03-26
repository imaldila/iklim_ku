import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iklimku/models/city_name.dart';
import 'package:provider/provider.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cityNameController = TextEditingController();
    return Consumer<CityName>(
      builder: (context, value, child) {
        return TextFormField(
          controller: cityNameController,
          keyboardType: TextInputType.text,
          onChanged: value.getCityName,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFC4C4C4).withOpacity(0.18),
            contentPadding: const EdgeInsets.symmetric(vertical: 24),
            hintText: 'Search City Name',
            hintStyle: GoogleFonts.inter(
              fontSize: 16,
            ),
            prefixIcon: cityNameController.text.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      value.getCityName('');
                      cityNameController.clear();
                    },
                    icon: const Icon(Icons.cancel_outlined))
                : null,
            suffixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 16),
              child: InkWell(
                onTap: () {
                  print(value.cityName);
                  FocusScope.of(context).unfocus();
                },
                child: SvgPicture.asset(
                  'assets/icons/Search.svg',
                ),
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(32),
              ),
            ),
          ),
        );
      },
    );
  }
}
