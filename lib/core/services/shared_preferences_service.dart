import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends GetxService {
  final SharedPreferences pref;

  SharedPreferencesService({required this.pref});

  T? getData<T>({required String key}) {
    T? value;
    if (T.toString() == 'int') {
      value = pref.getInt(key) as T?;
    }
    if (T.toString() == 'double') {
      value = pref.getDouble(key) as T?;
    }
    if (T.toString() == 'bool') {
      value = pref.getBool(key) as T?;
    }
    if (T.toString() == 'String') {
      value = pref.getString(key) as T?;
    }
    return value;
  }

  Future<Unit> setData({required String key, required dynamic value}) async {
    bool isSetDone = false;
    if (value is int) {
      isSetDone = await pref.setInt(key, value);
      return Future.value(unit);
    }
    if (value is double) {
      isSetDone = await pref.setDouble(key, value);
      return Future.value(unit);
    }
    if (value is bool) {
      isSetDone = await pref.setBool(key, value);
      return Future.value(unit);
    }
    if (value is String) {
      isSetDone = await pref.setString(key, value);
      return Future.value(unit);
    }
    if (value == null) {
      isSetDone = await pref.remove(key);
      return Future.value(unit);
    }
    return Future.value(unit);
  }

  Future<Unit> clear() async {
    final clear = await pref.clear();
    return Future.value(unit);
  }
}
