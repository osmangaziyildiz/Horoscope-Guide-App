class Horoscope {
  final String horoscopeName;
  final String horoscopeDate;
  final String horoscopeDetail;
  final String horoscopeIcon;
  final String horoscopeImage;

  Horoscope(this.horoscopeName, this.horoscopeDate, this.horoscopeDetail,
      this.horoscopeIcon, this.horoscopeImage);

  @override
  String toString() {
    return "$horoscopeName" "$horoscopeDate" "$horoscopeDetail";
  }
}
