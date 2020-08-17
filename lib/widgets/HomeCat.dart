import 'package:Ecommerce/helpers/global.dart';

class CatWidget extends StatefulWidget {
  _CatPostWidgetState createState() => _CatPostWidgetState();
}

class _CatPostWidgetState extends State<CatWidget> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      length: 6,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: TabBar(
                isScrollable: true,
                unselectedLabelColor: Color(0xffCA1F3F),
                indicatorColor: Color(0xffCA1F3F),
                tabs: [
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'T-Shirts',
                        style: TextStyle(
                            color: Color(0xff1F2322),
                            fontFamily: 'Gilory',
                            fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Hoodies',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Jackets & Coats',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Blazers',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Pants',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Shorts',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
            body: Column(
              children: <Widget>[
                Container(
                  height: 270,
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Container(
                        child: Center(child: ListWidget()),
                      ),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
                SizedBox(height: 30),
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
                          size: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text('Trending',
                              style: TextStyle(
                                  fontSize: 22,
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
                            child: Text('Show All',
                                style: TextStyle(
                                    color: Color(0xff1F2322).withOpacity(0.5),
                                    fontSize: 15,
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
                Container(
                  height: 270,
                  child: Center(child: ListWidget()),
                ),
              ],
            )),
      ),
    );
  }
}
