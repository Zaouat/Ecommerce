import 'package:Ecommerce/helpers/global.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;
  final String size;

  SizingInformation({
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
    this.size,
  });

  @override
  String toString() {
    return ' DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize NameSize $size';
  }
}