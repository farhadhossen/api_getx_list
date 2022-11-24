import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http_interceptor/http_interceptor.dart';

class NetworkInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    //if (kDebugMode) {
    print("REQUEST");
    print(data.method);
    print(data.url);
    print(data.toString());

    log("REQUEST");
    log("${data.method}");
    log(data.url);
    log(data.toString());
    //}
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    //if (kDebugMode) {
    print("RESPONSE");
    print(data.method);
    print(data.url);
    print(data.toString());
    //}
    return data;
  }

}