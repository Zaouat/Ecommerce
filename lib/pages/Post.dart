import 'package:Ecommerce/helpers/global.dart';

final List<String> _images = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg'
];

class Postpage extends StatefulWidget {
  @override
  _PagePost createState() => _PagePost();
}

class _PagePost extends State<Postpage> with TickerProviderStateMixin {
  int addcart = 0;
  TabController tabCont;
  bool selectedList = false;

  @override
  void dispose() {
    tabCont.dispose();
    super.dispose();
  }

//Appbar height
  double heightbar = 0;
  @override
  Widget build(
    BuildContext context,
  ) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
    );
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.size == "Large") {
        heightbar = 380;
      } else if (sizingInformation.size == "Medium") {
        heightbar = 280;
      } else {
        heightbar = 250;
      }
      return Scaffold(
        backgroundColor: Colors.white,
        body: SlidingUpPanel(
          minHeight: 40,
          panel: Column(
            children: <Widget>[
              Center(
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Color(0xffCA1F3F),  borderRadius: radius),
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Reviews (112)",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gilory',
                            fontSize: 17),
                      ),
                      IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                    color: Color(0xffCA1F3F),
                    height: 460,
                    child: ListReviewWidget()),
              ),
            ],
          ),
          collapsed: Container(
            decoration:
                BoxDecoration(color: Color(0xffCA1F3F),  borderRadius: radius),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Reviews (112)",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilory',
                        fontSize: 17),
                  ),
                  IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_up),
                    color: Colors.white,
                    iconSize: 25,
                  ),
                ],
              ),
            ),
          ),
          body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                actions: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: IconButton(
                        icon: Badge(
                          badgeContent: Text(
                            addcart.toString(),
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Gilory'),
                          ),
                          badgeColor: Color(0xffCA1F3F),
                          child: Icon(
                            Ionicons.md_basket,
                            color: Color(0xffCA1F3F),
                          ),
                        ),
                        onPressed: () {}),
                  )
                ],
                iconTheme: IconThemeData(color: mcolor),
                actionsIconTheme: IconThemeData(color: mcolor),
                elevation: 2,
                backgroundColor: Colors.white,
                expandedHeight: heightbar,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                    child: Swiper(
                      itemCount: _images.length,
                      onTap: (img) {
                        print("isclicked");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageWidget()),
                        );
                      },
                      itemBuilder: (BuildContext context, int index) =>
                          Image.asset(
                        _images[index],
                        fit: BoxFit.cover,
                      ),
                      autoplay: false,
                      pagination: new SwiperPagination(
                          builder: new DotSwiperPaginationBuilder(
                              activeColor: Color(0xffCA1F3F).withOpacity(0.7),
                              color: Colors.grey.withOpacity(0.9),
                              size: 6)),
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(borderRadius: radius),
              ),
              SliverFillViewport(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBoxResponsive(
                          height: 35,
                        ),
                        ListTile(
                          title: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextResponsive(
                                  'Viscose shirt with two-tone print',
                                  style: TextStyle(
                                    color: Color(0xff1F2322),
                                    fontSize: 65,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          trailing: IconButton(
                              icon: Icon(
                                Ionicons.ios_heart,
                                color: Color(0xffCA1F3F),
                                size: 28,
                              ),
                              onPressed: () {}),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            TextResponsive(
                              "£32.12",
                              style: TextStyle(
                                  color: Color(0xff1F2322).withOpacity(0.7),
                                  fontSize: 60,
                                  fontFamily: 'Gilory'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TextResponsive(
                              "£41.12",
                              style: TextStyle(
                                  color: Color(0xff1F2322).withOpacity(0.3),
                                  fontSize: 60,
                                  fontFamily: 'Gilory',
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red),
                            ),
                          ],
                        ),
                        SizedBoxResponsive(
                          height: 50,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            TextResponsive(
                              'Colors',
                              style: TextStyle(
                                  color: Color(0xff1F2322).withOpacity(0.5),
                                  fontSize: 60,
                                  fontFamily: 'Gilory'),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            ContainerResponsive(
                                heightResponsive: true,
                                height: 160,
                                child: MaterialColorPicker(
                                  physics: NeverScrollableScrollPhysics(),
                                  elevation: 1,
                                  circleSize: 30,
                                  allowShades: false,
                                  onMainColorChange: (ColorSwatch color) {
                                    // Handle main color changes
                                  },
                                  colors: [
                                    Colors.blueGrey,
                                    Colors.red,
                                    Colors.deepPurple,
                                  ],
                                  selectedColor: Colors.transparent,
                                ))
                          ],
                        ),
                        SizedBoxResponsive(
                          height: 25,
                        ),

                        DropSizes(),
                        SizedBox(
                          height: 25,
                        ),
                        //buttons
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: 150,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        side: BorderSide(
                                            color: Color(0xffCA1F3F))),
                                    color: Colors.white,
                                    textColor: Color(0xffCA1F3F),
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () {
                                      setState(() {
                                        addcart = addcart + 1;
                                      });
                                    },
                                    child: TextResponsive(
                                      "Add to Cart".toUpperCase(),
                                      style: TextStyle(
                                        fontFamily: 'Gilory',
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Container(
                                  width: 150,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        side: BorderSide(
                                            color: Color(0xffCA1F3F))),
                                    onPressed: () {},
                                    color: Color(0xffCA1F3F),
                                    textColor: Colors.white,
                                    child: TextResponsive(
                                        "Buy now".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'Gilory')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBoxResponsive(
                          height: 70,
                        ),
                        //details product
                        ListTile(
                          title: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: 150,
                                  child: TextResponsive(
                                    'Product Details',
                                    style: TextStyle(
                                        color:
                                            Color(0xff1F2322).withOpacity(0.5),
                                        fontSize: 60,
                                        fontFamily: 'Gilory'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          trailing: Container(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                child: TextResponsive(
                                  'Size chart',
                                  style: TextStyle(
                                      color: Color(0xffCA1F3F),
                                      fontSize: 50,
                                      fontFamily: 'Gilory'),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageTemplate(
                                              title: 'Fit & Size Chart',
                                              bodyWidget: SizechartPage(),
                                            )),
                                  );
                                  //Size chart
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBoxResponsive(
                          height: 50,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 15,
                              ),
                              TextResponsive(
                                'Material : ',
                                style: TextStyle(
                                    color: Color(0xff1F2322).withOpacity(0.5),
                                    fontSize: 50,
                                    fontFamily: 'Gilory'),
                              ),
                              Flexible(
                                child: TextResponsive(
                                  'Various materials can be used to weave a fabric. The most common are Cotton and Linen.',
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.5),
                                      fontSize: 50,
                                      fontFamily: 'Giloryl'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBoxResponsive(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 15,
                              ),
                              TextResponsive(
                                'Size & Fit : ',
                                style: TextStyle(
                                    color: Color(0xff1F2322).withOpacity(0.5),
                                    fontSize: 50,
                                    fontFamily: 'Gilory'),
                              ),
                              Flexible(
                                child: TextResponsive(
                                  'One size larger is recommended.\t please check the size chart for further information.',
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.5),
                                      fontSize: 50,
                                      fontFamily: 'Giloryl'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
          borderRadius: radius,
        ),
      );
    });
  }
}
