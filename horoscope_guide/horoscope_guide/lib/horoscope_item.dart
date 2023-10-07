import 'package:flutter/material.dart';
import 'package:horoscope_guide/models/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listedhoroscope;
  const HoroscopeItem({required this.listedhoroscope, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 10,
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/horoscopeDetail",
                arguments: listedhoroscope);
          },
          contentPadding: const EdgeInsets.all(5),
          leading: Image.asset(
            "my_assets/images/${listedhoroscope.horoscopeIcon}",
          ),
          title: Text(listedhoroscope.horoscopeName,
              style: myTextStyle.headlineSmall),
          subtitle: Text(listedhoroscope.horoscopeDate,
              style: myTextStyle.titleSmall),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
