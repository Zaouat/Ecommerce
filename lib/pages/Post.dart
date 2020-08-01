import 'package:Ecommerce/widgets/Imageview.dart';
import 'package:Ecommerce/widgets/ListReviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:badges/badges.dart';
import 'PageTemplate.dart';
import 'Sizechart.dart';


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
   int addcart =0;
  final List<Tab> Tabs = <Tab>[
    Tab(text: "Latest"),
    Tab(text: "First"),
    Tab(text: "Upvoted"),
  ];
  TabController tabCont;

  bool selectedList = false;
  String dropdownValue = 'S';
  @override
  void initState() {
    super.initState();
    tabCont = new TabController(vsync: this, length: Tabs.length);
  }

  @override
  void dispose() {
    tabCont.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    );
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
                    color: Color(0xffCA1F3F), borderRadius: radius),
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
              BoxDecoration(color: Color(0xffCA1F3F), borderRadius: radius),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Reviews (112)",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Gilory', fontSize: 17),
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
                          badgeContent: Text(addcart.toString(),style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory'
                          ),),
                          badgeColor:Color(0xffCA1F3F) ,
                          child: Icon(
                            Ionicons.md_basket,
                            color: Color(0xffCA1F3F),
                          ),
                        ),
                        onPressed: () {}),

                )
              ],
              iconTheme: IconThemeData(color: Color(0xffCA1F3F)),
              actionsIconTheme: IconThemeData(color: Color(0xffCA1F3F)),
              elevation: 2,
              backgroundColor: Colors.white,
              expandedHeight: 380.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                  child: Swiper(
                    itemCount: _images.length,
                    onTap: (img) {
                      print("isclicked");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImageWidget()),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
            ),
            SliverFillViewport(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                width: 150,
                                child: Text(
                                  'Viscose shirt with two-tone print',
                                  style: TextStyle(
                                      color: Color(0xff1F2322),
                                      fontSize: 26,
                                      fontFamily: 'Gilory'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        trailing: Container(
                          child: IconButton(
                              icon: Icon(
                                Ionicons.ios_heart,
                                color: Color(0xffCA1F3F),
                                size: 28,
                              ),
                              onPressed: () {}),
                        ),
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
                          Text(
                            "£32.12",
                            style: TextStyle(
                                color: Color(0xff1F2322).withOpacity(0.7),
                                fontSize: 22,
                                fontFamily: 'Gilory'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "£41.12",
                            style: TextStyle(
                                color: Color(0xff1F2322).withOpacity(0.3),
                                fontSize: 22,
                                fontFamily: 'Gilory',
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Colors',
                            style: TextStyle(
                                color: Color(0xff1F2322).withOpacity(0.5),
                                fontSize: 20,
                                fontFamily: 'Gilory'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              height: 70,
                              child: MaterialColorPicker(
                                physics: NeverScrollableScrollPhysics(),
                                elevation: 1,
                                circleSize: 35,
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Size',
                            style: TextStyle(
                                color: Color(0xff1F2322).withOpacity(0.5),
                                fontSize: 20,
                                fontFamily: 'Gilory'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 40,
                            width: 180,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                    color: Color(0xff1F2322).withOpacity(0.3)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Theme(
                                  data: ThemeData(
                                      canvasColor: Colors.white,
                                      primaryColor: Color(0xffCA1F3F),
                                      accentColor: Colors.black,
                                      hintColor: Color(0xffCA1F3F)),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 24,
                                    elevation: 16,
                                    iconEnabledColor: Color(0xffCA1F3F),
                                    style: TextStyle(
                                        color: Color(0xffCA1F3F),
                                        fontSize: 16,
                                        fontFamily: 'Gilory'),
                                    underline: Text(''),
                                    value: dropdownValue,
                                    items: <String>['S', 'M', 'L', 'XL', 'XXL']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                              color: Color(0xffCA1F3F)),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                  )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                width: 150,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side:
                                          BorderSide(color: Color(0xffCA1F3F))),
                                  color: Colors.white,
                                  textColor: Color(0xffCA1F3F),
                                  padding: EdgeInsets.all(8.0),
                                  onPressed: () {
                                    setState(() {
                                      addcart=addcart+1;
                                    });
                                  },
                                  child: Text(
                                    "Add to Cart".toUpperCase(),
                                    style: TextStyle(
                                      fontFamily: 'Gilory',
                                      fontSize: 14.0,
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
                                      borderRadius: BorderRadius.circular(5.0),
                                      side:
                                          BorderSide(color: Color(0xffCA1F3F))),
                                  onPressed: () {},
                                  color: Color(0xffCA1F3F),
                                  textColor: Colors.white,
                                  child: Text("Buy now".toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Gilory')),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ListTile(
                        title: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                width: 150,
                                child: Text(
                                  'Product Details',
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.7),
                                      fontSize: 20,
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
                              child: Text(
                                'Size chart',
                                style: TextStyle(
                                    color: Color(0xffCA1F3F),
                                    fontSize: 16,
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: RichText(
                            text: new TextSpan(
                              children: <TextSpan>[
                                new TextSpan(
                                  text: 'Material : ',
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.7),
                                      fontSize: 18,
                                      fontFamily: 'Gilory'),
                                ),
                                new TextSpan(
                                  text:
                                      'Various materials can be used to weave a fabric. The most common are Cotton and Linen.',
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.5),
                                      fontSize: 17,
                                      fontFamily: 'Giloryl'),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: RichText(
                            text: new TextSpan(
                              children: <TextSpan>[
                                new TextSpan(
                                  text: 'Size & Fit : ',
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.7),
                                      fontSize: 18,
                                      fontFamily: 'Gilory'),
                                ),
                                new TextSpan(
                                  text:
                                      'One size larger is recommended.\t please check the size chart for further information.',
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.5),
                                      fontSize: 17,
                                      fontFamily: 'Giloryl'),
                                ),
                              ],
                            ),
                          )),
                        ],
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
  }
}
