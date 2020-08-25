import 'package:Ecommerce/helpers/global.dart';

class ListReviewWidget extends StatelessWidget {
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int i) {
          return ReviewWidget();
        });
  }
}
