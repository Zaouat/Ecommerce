import 'package:Ecommerce/helpers/global.dart';

class CatItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  CatItem(
      {Key key,
        @required this.image,
        @required this.title,
        @required this.description,
      });
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(

      //Image
      leading: Container(
        height: 60,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image:  DecorationImage(
            image:  ExactAssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      //Title and Subtitle
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: Color(0xff1F2322),
                fontFamily: 'Gilory',
                fontSize: 18),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(fontFamily: 'GiloryL', fontSize: 15),
          ),
        ],
      ),
      //SubCategory
      children: [
        SizedBox(height: 10),
        Itemlist(title:"Clothing"),
        SizedBox(height: 3),
        Itemlist(title:"Shoes"),
        SizedBox(height: 3),
        Itemlist(title:"Accessories"),
        SizedBox(height: 3),
        Itemlist(title:"Hats"),
        SizedBox(height: 3),
        Itemlist(title:"Back packs"),
        SizedBox(height: 3),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 95),
                  Text(
                    "All categories",
                    style: TextStyle(
                        color: Color(0xff8A92F0),
                        fontFamily: 'Gilory',
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}