import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> getWeather({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.get(endPoint, queryParameters: queryParameters);
    return response;
  }
}
