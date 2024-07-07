import 'package:hcloud/src/models/error.dart';

class HCloudException implements Exception {
  final String _cause;
  HCloudException(this._cause);

  @override
  String toString() {
    return _cause;
  }
}

class HCloudApiException extends HCloudException {
  final ErrorResponse error;

  HCloudApiException(this.error) : super(error.message);

  @override
  String toString() {
    return error.message;
  }
}
