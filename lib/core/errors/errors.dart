import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

/// Server / API Failure
class ServerFailure extends Failure {
  const ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection Timeout');

      case DioExceptionType.sendTimeout:
        return const ServerFailure('Send Timeout');

      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Receive Timeout');

      case DioExceptionType.badCertificate:
        return const ServerFailure('Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response?.statusCode,
          e.response?.data,
        );

      case DioExceptionType.cancel:
        return const ServerFailure('Request was cancelled');

      case DioExceptionType.connectionError:
        return const ServerFailure('No internet connection');

      case DioExceptionType.unknown:
        return const ServerFailure('Unexpected error occurred');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerFailure(response?['message'] ?? 'Unauthorized request');

      case 404:
        return const ServerFailure('City name is incorrect.');

      case 429:
        return const ServerFailure('API limit reached');

      case 500:
        return const ServerFailure('Internal server error');

      default:
        return const ServerFailure('Something went wrong');
    }
  }
}

class NoInternetFailure extends Failure {
  const NoInternetFailure() : super('No internet connection');
}

class CacheFailure extends Failure {
  const CacheFailure() : super('No cached data available');
}
