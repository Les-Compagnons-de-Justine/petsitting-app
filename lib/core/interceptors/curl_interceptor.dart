import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';

class CurlInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) {
    final request = chain.request;

    final method = request.method.toUpperCase();
    final url = request.url;
    final headers = request.headers;
    final body = request.body;

    String curlCommand = 'curl -X $method \'$url\'';

    if (headers.isNotEmpty) {
      headers.forEach((key, value) {
        curlCommand += ' -H \'$key: $value\'';
      });
    }

    if (body != null && body.isNotEmpty) {
      if (body is Map) {
        curlCommand += ' -d \'${jsonEncode(body)}\'';
      } else if (body is String) {
        curlCommand += ' -d \'$body\'';
      }
    }

    debugPrint('CURL: $curlCommand');

    return chain.proceed(request);
  }
}
