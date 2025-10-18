import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkUtil {
  static final Connectivity _connectivity = Connectivity();

  static Future<bool> hasInternetConnection() async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      return connectivityResult != ConnectivityResult.none;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> hasInternetConnectionWithRetry({
    int retryCount = 2,
    Duration delay = const Duration(seconds: 1),
  }) async {
    for (int i = 0; i < retryCount; i++) {
      if (await hasInternetConnection()) {
        return true;
      }
      if (i < retryCount - 1) {
        await Future.delayed(delay);
      }
    }
    return false;
  }

  static Stream<bool> get onConnectivityChanged {
    return _connectivity.onConnectivityChanged.map(
      (result) => result != ConnectivityResult.none,
    );
  }
}