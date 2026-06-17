import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_assessment/core/errors/errors.dart';

void main() {
  group("ServerFailure", () {
    // API Failure
    test('should return rate limit message for 429', () {
      final dioError = DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 429,
          data: {},
        ),
      );

      final result = ServerFailure.fromDioException(dioError);

      expect(result.message, 'API limit reached');
    });

    // Invalid City Name
    test('should return City not found for 404', () {
      final dioError = DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 404,
          data: {'message': 'city not found'},
        ),
      );

      final result = ServerFailure.fromDioException(dioError);

      expect(result.message, 'City not found');
    });

    //Network Failure
    test('should return no internet message', () {
      final dioError = DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.connectionError,
      );

      final result = ServerFailure.fromDioException(dioError);

      expect(result.message, 'No internet connection');
    });
  });
}
