import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/app_constants.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  final SharedPreferences sharedPreferences;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.sharedPreferences, required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    // timeout = Duration(seconds: 5);
    token = sharedPreferences.getString(AppConstants.token) ?? "";
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  void updateHeader(String token) {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(
    String uri, {
    Map<String, dynamic>? query,
    String? contentType,
    Map<String, String>? headers,
    Function(dynamic)? decoder,
  }) async {
    try {
      Response response = await get(
        uri,
        contentType: contentType,
        query: query,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token', //carrier
        },
        decoder: decoder,
      );
      response = handleResponse(response);

      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(
    String uri,
    dynamic body,
  ) async {
    try {
      Response response = await post(
        uri, body,
        // query: query,
        // contentType: contentType,
        headers: _mainHeaders,
      );
      response = handleResponse(response);
      if (kDebugMode) {
        log('====> GetX Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Response handleResponse(Response responses) {
    Response response = responses;
    if (response.hasError &&
        response.body != null &&
        response.body is! String) {
      if (response.body.toString().startsWith('{errors: [{code:')) {
        response = Response(
            statusCode: response.statusCode,
            body: response.body,
            statusText: "Error");
      } else if (response.body.toString().startsWith('{message')) {
        response = Response(
            statusCode: response.statusCode,
            body: response.body,
            statusText: response.body['message']);
      }
    } else if (response.hasError && response.body == null) {
      if (kDebugMode) {
        print("The status code is ${response.statusCode}");
      }
      response = const Response(
          statusCode: 0,
          statusText:
              'Connection to API server failed due to internet connection');
    }
    return response;
  }
}