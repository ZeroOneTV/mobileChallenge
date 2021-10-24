import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

enum HTTPMethod { get, post }

abstract class Gateway {
  Gateway({required this.httpClient,});
  final baseUrl = 'https://randomuser.me/api/?';
  final Dio httpClient;
  int? offset;

  Future<T> request<T>(
      String url,
      T Function(dynamic) fromJson, {
        data = const {},
        HTTPMethod method = HTTPMethod.get,
        Function(DioError)? onError,
      }) async {
    debugPrint('Fetching $url from API');
    debugPrint('${method.toString().toUpperCase()} $url');
    debugPrint(data.toString());

    try {
      late Response response;
      switch (method) {
        case HTTPMethod.get:
          response = await _get(url);
          break;
        case HTTPMethod.post:
          response = await _post(url, data);
          break;
      }
      return fromJson(response.data);
    } on DioError catch (e) {
      debugPrint('Failed fetching $url from API -> ${e.error.toString()}');
      if (onError != null) {
        return onError(e);
      }
      rethrow;
    }
  }

  Future<Response> _get(String url) async {
    final response = await httpClient.get(
      '$baseUrl$url',
    );
    return response;
  }

  Future<Response> _post(String url, data,) async {
    final response = await httpClient.post(
      '$baseUrl$url',
      data: data,
    );
    return response;
  }
}