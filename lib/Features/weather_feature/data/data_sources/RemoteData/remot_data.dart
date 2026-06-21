import 'package:weather_app_assessment/Features/weather_feature/data/models/weather_model/weather_model.dart';
import 'package:weather_app_assessment/core/constant/ApiConstants.dart';
import 'package:weather_app_assessment/core/utils/api_service.dart';

class RemotData {
  final ApiService apiService;
  const RemotData(this.apiService);
  Future<WeatherModel> getWeather(String cityName) async {
    var respons = await apiService.getWeather(
      endPoint: Apiconstants.baseUrl,
      queryParameters: {"q": cityName, "appid": Apiconstants.token},
    );
    // cachData her
    var data = WeatherModel.fromJson(respons.data);
    print("==========>$data");
    return data;
  }
}
