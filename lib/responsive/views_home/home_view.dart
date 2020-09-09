import 'package:Ecommerce/helpers/global.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeView extends StatelessWidget {

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
          landscape: HomeMobilePortrait(),
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
