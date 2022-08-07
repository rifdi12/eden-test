import 'package:get_storage/get_storage.dart';

class GetStorageHelper {
  static String USER_ID = "userId";
  static String FULL_NAME = "fullName";
  final storage = GetStorage();

  getUserId() {
    return storage.read(USER_ID);
  }

  getUserName() {
    return storage.read(FULL_NAME);
  }

  write(String key, dynamic value) {
    return storage.write(key, value);
  }

  clear() {
    return storage.erase();
  }
}
