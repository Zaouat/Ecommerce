import 'package:Ecommerce/helpers/global.dart';

class ListWidget extends StatefulWidget {
  _CatListWidgetState createState() => _CatListWidgetState();
}

class _CatListWidgetState extends State<ListWidget> {
  @override
  Widget build(
      BuildContext context,
      ) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 7,
        padding: EdgeInsets.only(
            left: 15, right: 15, bottom: 15, top: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int i) {
          return i==6? EndofList():CardWidget();
        });
  }
}
