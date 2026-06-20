import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/clouds.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/coord.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/main.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/sys.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/wind.dart';

void main() {
  group('modle tes', () {
    test('WeatherModel toJson returns valid map', () {
      final model = WeatherModel(
        coord: Coord(lon: 55.3047, lat: 25.2582),
        weather: [
          Weather(
            icon: "01n",
            id: 800,
            main: "Clear",
            description: "clear sky",
          ),
        ],
        base: "stations",
        main: Main(
          temp: 30.78,
          feelsLike: 34.87,
          tempMin: 30.78,
          tempMax: 30.78,
          pressure: 1002,
          humidity: 62,
          seaLevel: 1002,
          grndLevel: 1001,
        ),
        visibility: 10000,
        wind: Wind(speed: 2.84, deg: 64, gust: 3.14),

        clouds: Clouds(all: 0),
        dt: 1781735590,
        sys: Sys(country: "AE", sunrise: 1781746118, sunset: 1781795465),
        timezone: 14400,
        id: 292223,
        name: "Dubai",
        cod: 200,
      );

      final json = model.toJson();

      expect(json['name'], "Dubai");
      expect(json['id'], 292223);
      expect((json['main'] as Map)['temp'], 30.78);
    });
    test('WeatherModel handles', () {
      final json = <String, dynamic>{
        "coord": {"lon": 55.3047, "lat": 25.2582},
        "weather": [
          {
            "id": 800,
            "main": "Clear",
            "description": "clear sky",
            "icon": "01n",
          },
        ],
        "base": "stations",
        "main": {
          "temp": 30.78,
          "feels_like": 34.87,
          "temp_min": 30.78,
          "temp_max": 30.78,
          "pressure": 1002,
          "humidity": 62,
          "sea_level": 1002,
          "grnd_level": 1001,
        },
        "visibility": 10000,
        "wind": {"speed": 2.84, "deg": 64, "gust": 3.14},
        "clouds": {"all": 0},
        "dt": 1781735590,
        "sys": {"country": "AE", "sunrise": 1781746118, "sunset": 1781795465},
        "timezone": 14400,
        "id": 292223,
        "name": "Dubai",
        "cod": 200,
      };

      final model = WeatherModel.fromJson(json);

      expect(model.name, "Dubai");
      expect(model.weather, isA<List<Weather>>());
      expect(model.weather!.length, 1);
    });
  });
  test("should return url string when icon is NotEmpty", () {
    final json = <String, dynamic>{
      "coord": {"lon": 55.3047, "lat": 25.2582},
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"},
      ],
      "base": "stations",
      "main": {
        "temp": 30.78,
        "feels_like": 34.87,
        "temp_min": 30.78,
        "temp_max": 30.78,
        "pressure": 1002,
        "humidity": 62,
        "sea_level": 1002,
        "grnd_level": 1001,
      },
      "visibility": 10000,
      "wind": {"speed": 2.84, "deg": 64, "gust": 3.14},
      "clouds": {"all": 0},
      "dt": 1781735590,
      "sys": {"country": "AE", "sunrise": 1781746118, "sunset": 1781795465},
      "timezone": 14400,
      "id": 292223,
      "name": "Dubai",
      "cod": 200,
    };

    final model = WeatherModel.fromJson(json);

    expect(model.geticonUrl(), "https://openweathermap.org/img/wn/01n@2x.png");
  });
  test("should return empty string when icon is empty", () {
    final json = <String, dynamic>{
      "coord": {"lon": 55.3047, "lat": 25.2582},
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": ""},
      ],
      "base": "stations",
      "main": {
        "temp": 30.78,
        "feels_like": 34.87,
        "temp_min": 30.78,
        "temp_max": 30.78,
        "pressure": 1002,
        "humidity": 62,
        "sea_level": 1002,
        "grnd_level": 1001,
      },
      "visibility": 10000,
      "wind": {"speed": 2.84, "deg": 64, "gust": 3.14},
      "clouds": {"all": 0},
      "dt": 1781735590,
      "sys": {"country": "AE", "sunrise": 1781746118, "sunset": 1781795465},
      "timezone": 14400,
      "id": 292223,
      "name": "Dubai",
      "cod": 200,
    };

    final model = WeatherModel.fromJson(json);

    expect(model.geticonUrl(), "");
  });

  test('WeatherModel handles null fields safely', () {
    final json = <String, dynamic>{};

    final model = WeatherModel.fromJson(json);

    expect(model.name, null);
    expect(model.weather, null);
    expect(model.main, null);
  });
}
