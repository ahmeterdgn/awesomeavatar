
import 'dart:async';

import 'package:flutter/services.dart';

class Awesomeavatar {
  static const MethodChannel _channel =
      const MethodChannel('awesomeavatar');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
