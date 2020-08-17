import 'package:Ecommerce/helpers/global.dart';

class PageCategories extends StatelessWidget {
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(
      dividerColor: Colors.transparent,
      focusColor: Color(0xffCA1F3F),
      accentColor: Color(0xffCA1F3F),
    );
    return Theme(
      data: theme,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(height: 30),
          //Category
          ExpansionTile(
            //Image
            leading: Container(
              height: 60,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/images/women.jpg'),
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
                  "Women",
                  style: TextStyle(
                      color: Color(0xff1F2322),
                      fontFamily: 'Gilory',
                      fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  'Lorem Ipsum is simply dummy text.',
                  style: TextStyle(fontFamily: 'GiloryL', fontSize: 15),
                ),
              ],
            ),
            //SubCategory
            children: [
              SizedBox(height: 10),
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
                          "Clothing",
                          style: TextStyle(
                              color: Color(0xff1F2322),
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                          "Shoes",
                          style: TextStyle(
                              color: Color(0xff1F2322),
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                          "Accessories",
                          style: TextStyle(
                              color: Color(0xff1F2322),
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                          "Hats",
                          style: TextStyle(
                              color: Color(0xff1F2322),
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                          "Back packs",
                          style: TextStyle(
                              color: Color(0xff1F2322),
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
          )
        ],
      ),
    );
  }
}
