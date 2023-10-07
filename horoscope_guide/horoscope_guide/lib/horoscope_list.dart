import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_item.dart';
import 'package:horoscope_guide/models/horoscope.dart';
import 'data/strings.dart';

class HoroscopeList extends StatelessWidget {
  late final List<Horoscope> allHoroscope;
  HoroscopeList({super.key}) {
    allHoroscope = preparedatasource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Horoscope List"), centerTitle: true),
      body: Center(
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return HoroscopeItem(listedhoroscope: allHoroscope[index]);
          },
        ),
      ),
    );
  }

  List<Horoscope> preparedatasource() {
    List<Horoscope> temporaryList = [];
    for (int i = 0; i < 12; i++) {
      var horoscopeName = Strings.horoscopeNames[i];
      var horoscopeDate = Strings.horoscopeDates[i];
      var horoscopeDetail = Strings.horoscopeGeneralDetail[i];
      var horoscopeIcon =
          "${Strings.horoscopeNames[i].toLowerCase()}${i + 1}.png";
      var horoscopeImage =
          "${Strings.horoscopeNames[i].toLowerCase()}_buyuk${i + 1}.png";

      Horoscope horoscopeWillAdded = Horoscope(
        horoscopeName,
        horoscopeDate,
        horoscopeDetail,
        horoscopeIcon,
        horoscopeImage,
      );
      temporaryList.add(horoscopeWillAdded);
    }
    return temporaryList;
  }
}
