import 'package:flutter/material.dart';
import 'file:///C:/Users/abdellah/Documents/Flutter%20Project/flutter_app_responsivetest/lib/responsive/sizing_information.dart';
import 'package:Ecommerce/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    name() {
      String namesize;
      if (mediaQuery.size.width >= 320 &&
          mediaQuery.size.width >= 375 &&
          mediaQuery.size.height > 500 &&
          mediaQuery.size.height > 569) {
        return namesize = "Large";
      } else if (mediaQuery.size.width >= 360 &&mediaQuery.size.height >=740) {
        return namesize = "Medium";
      } else
        return namesize = "Small";
    }

    return LayoutBuilder(builder: (context, boxSizing) {
      var sizingInformation = SizingInformation(
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
          Sizename: name());
      return builder(context, sizingInformation);
    });
  }
}
