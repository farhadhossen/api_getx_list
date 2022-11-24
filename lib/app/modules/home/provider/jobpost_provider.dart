import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import '../../../utils/network_interceptor.dart';
import '../models/AllPostModel.dart';


class JobPostProvider {
  static var client = InterceptedClient.build(interceptors: [
    NetworkInterceptor(),
  ]);


  static String? baseUrl = 'https://rakib10ms.com/'; //test




  Future<AllPostModel> getAllJobPost() async {
    final url = baseUrl! +
        'server/public/api/all-posts';
    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ${prefs.token.val}'
    });


    if (response.statusCode == 200) {


      return allPostModelFromJson(response.body);
    } else {
      throw HttpException('job post list error');
    }
  }


}