import 'package:Ecommerce/helpers/global.dart';

class TabItem extends StatelessWidget{
  final String title;
  final EdgeInsetsGeometry margin;
  const TabItem({@required this.title, this.margin});
  @override
  Widget build(BuildContext context) {
   return Tab(
     child: Container(
       margin: margin,
       child: TextResponsive(
         title,
         style: TextStyle(
             color: Color(0xff1F2322),
             fontFamily: 'Gilory',
             fontSize: 48),
         textAlign: TextAlign.center,
       ),
     ),
   );
  }

}