import 'package:Ecommerce/helpers/global.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: HomeMobilePortrait(),
        ),
        tablet: OrientationLayout(
         // portrait: HomeTabletPortrait(),
        ),
        desktop: OrientationLayout(
        //  portrait: HomeDesktopPortrait(),
        ),
      ),
    );
  }
}
