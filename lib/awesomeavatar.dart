
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AwesomeAvatar {
  static const MethodChannel _channel =
      const MethodChannel('awesomeavatar');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  double radius;
  String networkImage;
  String assetsImage;
  double outRadius;
  Color backgroundColor;
  AwesomeAvatar({
    this.radius,
    this.networkImage,
    this.assetsImage,
    this.outRadius,
    this.backgroundColor,
  });

  Widget build(BuildContext context) {
  var image = networkImage !=null ? Image.network(
      networkImage,
    ) :assetsImage !=null ? Image.asset(
    assetsImage,
  ) : Container();

    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius + outRadius,
      child: CircleAvatar(
        radius: radius,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: image
        ),
      ),
    );
  }
}
