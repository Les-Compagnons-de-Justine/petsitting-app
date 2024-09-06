import 'package:universal_io/io.dart';

class ApiConfig {
  static String get baseUrl {
    if (Platform.isAndroid) {
      return 'http://10.0.2.2:$port'; // For Android emulator
    } else if (Platform.isIOS) {
      return 'http://localhost:$port'; // For iOS simulator
    } else {
      return 'http://localhost:$port'; // Default for other platforms
    }
  }

  static int port = 8080;
}
