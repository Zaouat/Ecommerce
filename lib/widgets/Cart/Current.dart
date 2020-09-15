import 'package:Ecommerce/helpers/global.dart';

class Current extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Flexible(
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 2,
           padding: EdgeInsets.all(15),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int i) {
              return Cardcart();
            }),
      ),
      Container(
        color: Colors.red,
        height: 100,
      ),
    ]);
  }
}
