import 'package:dio/dio.dart';

import '../constants/localization_enum.dart';

extension DioErrorTypeExtension on DioErrorType {
  String convertToString() {
    switch (this) {
      case DioErrorType.badResponse:
        return Localization.BAD_RESPONSE.local();
      case DioErrorType.cancel:
        return Localization.REMOTE_CANCEL.local();
      case DioErrorType.connectionTimeout:
        return Localization.CONNECTION_TIMEOUT.local();
      case DioErrorType.unknown:
        return Localization.UNKNOWN.local();
      case DioErrorType.receiveTimeout:
        return Localization.RECEIVE_TIMEOUT.local();
      case DioErrorType.sendTimeout:
        return Localization.SEND_TIMEOUT.local();
      default:
        return Localization.UNKNOWN.local();
    }
  }
}

class RemoteException extends DioError {
  RemoteException({
    required super.requestOptions,
    required super.type,
  });

  @override
  String toString() {
    return type.convertToString();
  }
}
