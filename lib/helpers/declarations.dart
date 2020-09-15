import 'package:Ecommerce/helpers/global.dart';

final ScrollController Reviewscontroller = ScrollController();

final Color mcolor = Color(0xffCA1F3F);
final Color scolor = Color(0xffFEBA01);
final Color wcolor =Color(0xffF4F8FB);

final GlobalKey<InnerDrawerState> innerDrawerKey =
    GlobalKey<InnerDrawerState>();

void toggle() {
  innerDrawerKey.currentState.toggle(direction: InnerDrawerDirection.start);
}

BorderRadiusGeometry radius = BorderRadius.only(
  topLeft: Radius.circular(20.0),
  topRight: Radius.circular(20.0),
);
