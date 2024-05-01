import 'package:flutter/material.dart';

String API_KEY="89ebb6af2bb249f8b23172254243004";
final String baseUrl="http://api.weatherapi.com/v1/";
final String endPointes="current.json";
final String query="key=89ebb6af2bb249f8b23172254243004&q=London&aqi=no";


Widget getWeatherIcon(int code) {
  switch (code) {
    case >= 200 && < 300 :
      return Image.asset(
          'assets/1.png'
      );
    case >= 1063 && < 400 :
      return Image.asset(
          'assets/2.png'
      );
    case >= 500 && < 600 :
      return Image.asset(
          'assets/3.png'
      );
    case >= 1066 && < 1087 :
      return Image.asset(
          'assets/4.png'
      );
    case >= 1114 && <= 1117 :
      return Image.asset(
          'assets/5.png'
      );
    case == 1000 :
      return Image.asset(
          'assets/6.png'
      );
    case >= 1000 && <= 1003 :
      return Image.asset(
          'assets/7.png'
      );
    case >= 1006 && <= 1030 :
      return Image.asset(
          'assets/8.png'
      );
    default:
      return Image.asset(
          'assets/7.png'
      );
  }
}

// String getWelconeText(String time){
//
// }