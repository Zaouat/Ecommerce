import 'package:Ecommerce/helpers/global.dart';

class TrendWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Column(
     children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           Row(
             children: <Widget>[
               SizedBox(
                 width: 15,
               ),
               Icon(
                 Ionicons.md_bonfire,
                 color: Color(0xffCA1F3F),
                 size: 25,
               ),
               Container(
                 margin: EdgeInsets.only(left: 5),
                 child: TextResponsive('Trending',
                     style: TextStyle(
                         fontSize: 58,
                         color: Color(0xffCA1F3F),
                         fontFamily: 'Gilory')),
               ),
             ],
           ),
           Container(
               margin: EdgeInsets.only(right: 20),
               child: Material(
                 color: Colors.transparent,
                 child: InkWell(
                   child: TextResponsive('Show All',
                       style: TextStyle(
                           color:
                           Color(0xff1F2322).withOpacity(0.5),
                           fontSize: 45,
                           decoration: TextDecoration.underline,
                           fontFamily: 'Gilory')),
                   onTap: () {
                     //Show All trending
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => PageTemplate(
                             title: 'Trending',
                             bodyWidget: TrendingPage(),
                           )),
                     );
                   },
                 ),
               )),
         ],
       ),
       SizedBox(height: 10),
       ContainerResponsive(
         padding: EdgeInsets.zero,
         height: 650,
         heightResponsive: true,
         child: ListWidget(),
       ),
     ],
   );
  }

}