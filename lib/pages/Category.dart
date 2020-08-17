import 'package:Ecommerce/helpers/global.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (orientation == Orientation.portrait) ? 2 : 4),
        physics: BouncingScrollPhysics(),
        itemCount: 7,
        padding: EdgeInsets.only(left: 15, top: 15,right: 15),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int i) {
          return CardCatWidget();
        });

  }}