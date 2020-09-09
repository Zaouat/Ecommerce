import 'package:Ecommerce/helpers/global.dart';

class Items extends StatelessWidget {
  final String title;
  final double size;
  final Color color;
   bool font;
   bool center;
   Items(
      {Key key,
        @required this.title,
        @required this.size,
        @required this.color,
         this.font,
        this.center
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextResponsive(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily:this.font==false ?'Gilory':'Giloryl',
        color: color,
      ),
      textAlign: this.center==false ?TextAlign.center:null,
    );
  }
}
