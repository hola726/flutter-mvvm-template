import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../exception/failure.dart';
import '../exception/remote_exception.dart';

enum ResultCode {
  success, // 200
  error, // 500
  mismatch, // 200
  invalidRequest, // 400
  notFound, // 200
  failure, // 403
  empty // 200
}

extension _ResultCodeParser on String {
  ResultCode toResultCode() {
    switch (this) {
      case "SUCCESS":
        return ResultCode.success;
      case "ERROR":
        return ResultCode.error;
      case "MISMATCH":
        return ResultCode.mismatch;
      case "INVALID_REQUEST":
        return ResultCode.invalidRequest;
      case "NOT_FOUND":
        return ResultCode.notFound;
      case "FAILURE":
        return ResultCode.failure;
      case "EMPTY":
        return ResultCode.empty;
      default:
        throw FormatException("$this is can't parse to ResultCode");
    }
  }
}

class RemoteService {
  static late RemoteService _singleton;
  factory RemoteService() => _singleton;
  factory RemoteService.init(Dio dio) {
    _singleton = RemoteService._internal(dio);
    return _singleton;
  }
  RemoteService._internal(
    this._dio,
  );

  final Dio _dio;

  Future<Map<String, String>> _getHeader() async {
    String token = "";
    final Map<String, String> header = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: token
    };

    return header;
  }

  Future<Map<String, dynamic>> get(String api,
      [Map<String, dynamic>? params]) async {
    try {
      final Response response = await _dio.get(
        api,
        options: Options(
          headers: await _getHeader(),
        ),
        queryParameters: params,
      );
      final Map<String, dynamic> data = _responseHandler(response);
      return data;
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e.response);
      }
      throw RemoteException(
        requestOptions: e.requestOptions,
        type: e.type,
      );
    }
  }

  Future<Map<String, dynamic>> post(String api,
      [Map<String, dynamic>? body]) async {
    try {
      final Response response = await _dio.post(
        api,
        options: Options(
          headers: await _getHeader(),
        ),
        data: body != null ? jsonEncode(body) : null,
      );
      final Map<String, dynamic> data = _responseHandler(response);
      return data;
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> pub(String api,
      [Map<String, String>? body]) async {
    try {
      final Response response = await _dio.put(
        api,
        options: Options(
          headers: await _getHeader(),
        ),
        data: jsonEncode(body),
      );
      final Map<String, dynamic> data = _responseHandler(response);
      return data;
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> delete(String api,
      [Map<String, String?>? params]) async {
    try {
      final Response response = await _dio.delete(
        api,
        options: Options(
          headers: await _getHeader(),
        ),
      );
      final Map<String, dynamic> data = _responseHandler(response);
      return data;
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> patch(String api,
      [Map<String, String?>? body]) async {
    try {
      final Response response = await _dio.patch(
        api,
        options: Options(
          headers: await _getHeader(),
        ),
        data: jsonEncode(body),
      );
      dynamic data = _responseHandler(response);
      return data;
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      rethrow;
    }
  }

  Map<String, dynamic> _responseHandler(Response response) {
    final String responseResultCode = response.data['resultCode'];
    final ResultCode resultCode = responseResultCode.toResultCode();

    switch (resultCode) {
      case ResultCode.success:
        final Map<String, dynamic> decodedJson = Map.from(response.data);
        return decodedJson;
      case ResultCode.mismatch:
      case ResultCode.notFound:
      case ResultCode.empty:
        throw Failure(FailureStatusCode.RESOURCE);
      case ResultCode.invalidRequest:
        throw Failure(FailureStatusCode.INVALID_REQUEST);
      case ResultCode.error:
      case ResultCode.failure:
      default:
        throw Failure(FailureStatusCode.ERROR);
    }
  }
}
