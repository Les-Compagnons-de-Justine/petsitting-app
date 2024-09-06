import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final token = await FirebaseAuth.instance.currentUser?.getIdToken();

    Request request = chain.request;

    if (token != null) {
      request = applyHeader(chain.request, 'Authorization', 'Bearer $token');
      return chain.proceed(request);
    }

    return chain.proceed(request);
  }
}
