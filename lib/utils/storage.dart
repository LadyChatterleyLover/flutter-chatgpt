// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static final LocalStorage _instance = LocalStorage._internal();

  factory LocalStorage() => _instance;

  LocalStorage._internal();

  // 存储数据
  Future<void> setData(String key, dynamic value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else if (value is String) {
      prefs.setString(key, value);
    } else if (value is List<String>) {
      prefs.setStringList(key, value);
    } else {
      throw Exception("Unsupported data type");
    }
  }

  Future<List> loadList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? dataString = prefs.getString(key);
    return dataString != null ? List.from(json.decode(dataString)) : [];
  }

  Future<void> saveList(String key, List list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String dataString = json.encode(list);
    await prefs.setString(key, dataString);
  }

  // 获取数据
  dynamic getData<T>(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // 移除数据
  Future<void> removeData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  // 清空数据
  Future<void> clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
