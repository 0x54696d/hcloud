import 'package:dio/dio.dart';

import 'exceptions.dart';
import 'models/error.dart';

class ErrorHandler implements Exception {
  String _errorMessage = 'Something unexpected happened';

  ErrorHandler(this._errorMessage);

  /// Handles network and API related exceptions
  ///
  /// Takes a [DioException] and throws an [HCloudApiException] with the error message
  ErrorHandler.dioException(DioException exception) {
    _handleDioException(exception);
  }

  /// Handles all non network or API related errors
  ///
  /// Throws an [HCloudException] with the error message
  ErrorHandler.otherException() {
    _handleOtherException();
  }

  void _handleOtherException() {
    throw HCloudException(_errorMessage);
  }

  void _handleDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.cancel:
        _errorMessage = "Request Canceled";
        break;
      case DioExceptionType.connectionTimeout:
        _errorMessage = "Connection time out";
        break;
      case DioExceptionType.receiveTimeout:
        _errorMessage = "Received timeout";
        break;
      case DioExceptionType.badResponse:
        if (exception.response?.statusCode == 503) {
          _errorMessage = "Something went wrong";
        } else if (exception.response?.statusCode != 401) {
          _handleBadRequest(exception.response?.data);
        } else {
          _errorMessage = "Unauthorized";
        }
        break;
      case DioExceptionType.unknown:
        _errorMessage = "Something went wrong";
        break;
      case DioExceptionType.sendTimeout:
        _errorMessage = "Something went wrong";
        break;
      case DioExceptionType.connectionError:
        _errorMessage = "No Internet connection";
        break;
      default:
        _errorMessage =
            exception.response?.statusMessage ?? "Something went wrong";
        break;
    }

    final statusCode = exception.response?.statusCode ?? 500;

    throw HCloudApiException(ErrorResponse.fromJson({
      'code': 'http_${statusCode.toString()}',
      'message': _errorMessage,
    }));
  }

  /// Handles errors that are returned by the API
  ///
  /// Takes a response as [Map<String, dynamic>] and throws an [HCloudApiException] with the error message
  void _handleBadRequest(Map<String, dynamic>? response) {
    if (response == null || !response.containsKey('error')) {
      throw HCloudApiException(ErrorResponse.fromJson({
        'code': 'unknown',
        'message': 'Unknown error',
      }));
    }
    throw HCloudApiException(ErrorResponse.fromJson(response['error']));
  }
}
