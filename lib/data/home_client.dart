import 'dart:async';

import 'package:http/http.dart';

import '../core/utils/api_util.dart';
import '../core/utils/constants/api_constants.dart';

class HomeClient {
  Future<Response> getSessions() async {
    return await makeApiGetRequest(
      ApiConstants.allSessionize,
      {
        'Content-Type': 'application/json',
      },
    );
  }
}
