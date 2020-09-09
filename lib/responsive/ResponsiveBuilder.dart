import 'package:Ecommerce/helpers/global.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    name() {
      if (mediaQuery.size.width >= 320 && mediaQuery.size.width >= 375 && mediaQuery.size.height > 500 && mediaQuery.size.height > 569) {
        print("Large");
        return "Large";
      } else if (mediaQuery.size.width >= 360 && mediaQuery.size.height >= 740) {
        print("Medium");
        return "Medium";
      } else
        print("Small");
        return "Small";
    }

    return LayoutBuilder(builder: (context, boxSizing) {
      var sizingInformation = SizingInformation(
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
          size: name());
      return builder(context, sizingInformation);
    });
  }
}
