import 'package:Ecommerce/helpers/global.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function ontap;

  const DrawerItem(
      {Key key,
      @required this.icon,
      @required this.title,
      @required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconThemeData iconThemeData = IconTheme.of(context);
    return ListTile(
        leading: new Icon(this.icon,
            color: iconThemeData.color, size: iconThemeData.size - 5),
        title: Align(
          alignment: Alignment(-1.2, 0),
          child: TextResponsive(
            this.title,
            style: TextStyle(color: Colors.white, fontSize: 48),
          ),
        ),
        onTap: () {
          ontap();
        });
  }
}
