import 'package:get/get.dart';

class ApiHelper extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://storage.googleapis.com/mobile-flutter-test/";
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 10);

    super.onInit();
  }
}
