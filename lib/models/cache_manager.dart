import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin CacheManager {
  Future<bool> saveToken(String? token) async {
    final box = GetStorage();
    await box.write(CacheManagerKey.TOKEN.toString(), token);
    return true;
  }

  String? getToken() {
    final box = GetStorage();
    return box.read(CacheManagerKey.TOKEN.toString());
  }

  Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    final box = GetStorage();
    await prefs.remove('token');
    await prefs.remove('username');
    await box.remove(CacheManagerKey.TOKEN.toString());
    print("Remave all !!!!!!!!!");
  }
}

enum CacheManagerKey { TOKEN }
