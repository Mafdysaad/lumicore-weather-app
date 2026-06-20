import 'package:flutter_dotenv/flutter_dotenv.dart';

class Apiconstants {
  static final String? token = dotenv.env["WEATHER_API_KEY"];
  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather?';
}
