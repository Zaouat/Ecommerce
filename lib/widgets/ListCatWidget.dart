import 'package:Ecommerce/helpers/global.dart';

class ListWidget extends StatelessWidget {
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 7,
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int i) {
          return i == 6 ? EndofList() : CardWidget();
        });
  }
}
