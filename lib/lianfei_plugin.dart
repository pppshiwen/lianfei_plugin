import 'dart:async';

import 'package:flutter/services.dart';

class LianfeiPlugin {
  static const MethodChannel _channel =
      const MethodChannel('lianfei_plugin');
  //与D:\flutter\flutter_windows_v1.12.13+hotfix.5-stable\demo\lianfei_plugin\android\src\main\java\com\lianfei\womata\lianfei_plugin\LianfeiPlugin.java 注册的名‘lianfei_plugin’一致

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<int> doAdd(int num) async {
    final int count = await _channel.invokeMethod('doAdd',{"num": num});
    return count;
  }
}
