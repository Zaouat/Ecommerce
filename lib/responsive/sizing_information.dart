import 'package:flutter/widgets.dart';
import 'package:Ecommerce/enums/device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;
  final String Sizename;

  SizingInformation({
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
    this.Sizename,
  });

  @override
  String toString() {
    return ' DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}