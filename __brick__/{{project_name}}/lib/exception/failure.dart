import '../constants/localization_enum.dart';

enum FailureStatusCode {
  CONNECTION(Localization.CONNECTION),
  RESOURCE(Localization.RESOURCE),
  FORMAT(Localization.FORMAT),
  INVALID_REQUEST(Localization.INVALID_REQUEST),
  ERROR(Localization.ERROR);

  const FailureStatusCode(this.errorDescription);
  final Localization errorDescription;

  String convertToString() => errorDescription.local();
}

class Failure implements Exception {
  Failure(this.failureStatusCode);

  final FailureStatusCode failureStatusCode;

  @override
  String toString() {
    return failureStatusCode.convertToString();
  }
}
