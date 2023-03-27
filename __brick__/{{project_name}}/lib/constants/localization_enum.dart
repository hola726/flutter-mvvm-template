import 'package:easy_localization/easy_localization.dart';

enum Localization {
  // FailureStatusCode
  CONNECTION("인터넷에 연결되지 않음"),
  RESOURCE("찾을 수 없음"),
  FORMAT("잘못된 응답"),
  INVALID_REQUEST("잘못된 요청"),
  ERROR("에러"),

  // Dio Error
  CONNECTION_TIMEOUT("연결 시간초과"),
  SEND_TIMEOUT("전송 시간초과"),
  RECEIVE_TIMEOUT("수신 시간초과"),
  BAD_RESPONSE("응답 에러"),
  REMOTE_CANCEL("요청 취소"),
  UNKNOWN("기타 오류"),

  // Network
  CONNECT_NETWORK("네트워크에 연결되었어요"),
  CHECK_NETWORK("네트워크 연결을 확인해주세요"),

  RETRY_PLZ("다시시도 해주십시오"),
  CONFIRM("확인"),
  CANCEL("취소"),
  REFRESH("새로고침"),
  EMPTY_DATA("데이터가 없습니다."),
  BAD_CONNECTION("네트워크 연결 상태가 좋지 않습니다.\n잠시 후 다시 시도해 주세요.");

  const Localization(this.krDescription);
  final String krDescription;

  String local({Map<String, String>? namedArgs}) =>
      name.tr(namedArgs: namedArgs);
}
