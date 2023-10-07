import 'package:flutter/material.dart';
import 'package:horoscope_guide/models/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope selectedHoroscope;
  const HoroscopeDetail({required this.selectedHoroscope, super.key});

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appBarColor = Colors.black;
  late PaletteGenerator colorGenerator;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => findAppBarColor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBarColor,
            expandedHeight: 150,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.selectedHoroscope.horoscopeName),
              centerTitle: true,
              background: Image.asset(
                  "my_assets/images/${widget.selectedHoroscope.horoscopeImage}",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(15),
              child: Text(
                widget.selectedHoroscope.horoscopeDetail,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> findAppBarColor() async {
    colorGenerator = await PaletteGenerator.fromImageProvider(AssetImage(
        "my_assets/images/${widget.selectedHoroscope.horoscopeImage}"));
    appBarColor = colorGenerator.dominantColor!.color;
    setState(() {});
  }
}
