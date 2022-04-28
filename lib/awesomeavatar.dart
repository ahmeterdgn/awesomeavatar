
// ignore_for_file: must_be_immutable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AwesomeAvatar extends StatelessWidget{
  static const MethodChannel _channel =
  MethodChannel('awesomeavatar');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  double? radius;
  String? networkImage;
  String? assetsImage;
  double? outRadius;
  Color? backgroundColor;
  AwesomeAvatar({Key? key,
     this.radius,
    this.networkImage,
    this.assetsImage,
    this.outRadius,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image = networkImage != null ? Image.network(
      networkImage!,
    ) :assetsImage !=null ? Image.asset(
      assetsImage!,
    ) : Container();

    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius! + outRadius!,
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
