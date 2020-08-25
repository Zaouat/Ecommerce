import 'package:Ecommerce/helpers/global.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ResponsiveWidgets.builder(
      height: 1920, // Optional
      width: 1080, // Optional
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: HomeMobilePortrait(),
        ),
//        tablet: OrientationLayout(
//         portrait: HomeTabletPortrait(),
//        ),
//        desktop: OrientationLayout(
//         portrait: HomeDesktopPortrait(),
//        ),
      ),
    );
  }
}
