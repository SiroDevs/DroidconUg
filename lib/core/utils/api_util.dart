import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/api_constants.dart';
import 'app_util.dart';

/// Http get request
Future<http.Response> makeApiGetRequest(
  String endpoint,
  Map<String, String> headers,
) async {
  endpoint = ApiConstants.baseApiUrl + endpoint;

  try {
    logger('Api Request [GET]: $endpoint \nHeaders: ${json.encode(headers)}');

    final response = await http
        .get(Uri.parse(endpoint), headers: headers)
        .timeout(
          const Duration(seconds: 60),
          onTimeout: () {
            logger('Timeout occurred. Please try again later.');
            return http.Response('Timeout occurred', 504);
          },
        );

    // logger('Api Response: [${response.statusCode}] ${response.body}');
    logger('Api Response: [${response.statusCode}]');

    return response;
  } catch (e) {
    if (e is TimeoutException) {
      logger('Timeout occurred. Please try again later.');
      return http.Response('Timeout occurred', 504);
    } else {
      logger('An error occurred during the HTTP request: $e');
      return http.Response('Internal server error', 500);
    }
  }
}

String getEffectiveImageUrl(String? url) {
  if (url == null || url.isEmpty) return '';
    
    if (url.contains('sessionize.com')) {
      return url.replaceAll('sessionize.com', 'cache.sessionize.com');
    }
    
    return url;
}
