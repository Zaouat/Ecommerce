import 'dart:ui';
import 'package:Ecommerce/pages/PageTemplate.dart';
import 'package:Ecommerce/pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Erupt',
      theme: ThemeData(
        canvasColor: Color(0xffCA1F3F),
        splashColor: Color(0xffFEBA01).withOpacity(0.5),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.circular(40.0),
    );
    return InnerDrawer(
      key: _innerDrawerKey,
      onTapClose: true,
      leftOffset: 0.4,
      rightOffset: 0.6,
      // DEPRECATED:  use scale
      leftScale: 0.9, // Will be removed in 0.6.0 version
      rightScale: 0.9, // Will be removed in 0.6.0 version
      scale: IDOffset.horizontal(0.8),
      // set the offset in both directions
      proportionalChildArea: true, // default true
      borderRadius: 30, // default 0
      leftAnimationType: InnerDrawerAnimation.static, // default static
      backgroundDecoration: BoxDecoration(
        color: Color(0xffCA1F3F),
      ), // default  Theme.of(context).backgroundColor
      onDragUpdate: (double val, InnerDrawerDirection direction) {
        print(val);
        print(direction == InnerDrawerDirection.start);
      },
      colorTransitionScaffold: Colors.transparent,
      innerDrawerCallback: (a) => print(a),
      leftChild: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xffCA1F3F),
          splashColor: Color(0xffFEBA01).withOpacity(0.5),
          //other styles
        ),
        child: Drawer(
          elevation: 0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new DrawerHeader(
                  child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: new IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _toggle();
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  new ListTile(
                    title: Align(
                      alignment: Alignment(-1.2, 0),
                      child: RichText(
                        text: TextSpan(
                            text: 'Hello,\n',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Gilory',
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'abdellah',
                                style: TextStyle(
                                  fontFamily: 'GiloryL',
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ],
              )),
              new Container(
                child: new Column(children: <Widget>[
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_home,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Home",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        _toggle();
                      }),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_person,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageTemplate(
                                    title: 'Profile',
                                  )),
                        );
                      }),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_wallet,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Balance",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageTemplate(
                                    title: 'Balance',
                                  )),
                        );
                      }),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_cart,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageTemplate(
                                    title: 'Cart',
                                  )),
                        );
                      }),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_heart,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Favorites",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageTemplate(
                                    title: 'Favorites',
                                  )),
                        );
                      }),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_help_circle,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Help",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageTemplate(
                                    title: 'Help',
                                  )),
                        );
                      }),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_settings,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageTemplate(
                                    title: 'Settings',
                                    bodyWidget: PageSettings(),
                                  )),
                        );
                      }),
                  Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 40.0,
                    height: 50,
                    color: Colors.white.withOpacity(0.2),
                  ),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.md_log_out,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 18),
                        ),
                      ),
                      onTap: () {
                        setState(() {});
                      }),
                ]),
              )
            ],
          ),
        ),
      ), // required if rightChild is not set// required if leftChild is not set
      scaffold: SlidingUpPanel(
        backdropEnabled: true,
        minHeight: 420,
        borderRadius: radius,
        maxHeight: MediaQuery.of(context).size.height,
        panel: Container(),
        body: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              automaticallyImplyLeading: false,
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Ionicons.ios_menu,
                            color: Color(0xffFEBA01),
                            size: 30,
                          ),
                          onPressed: () {
                            _toggle();
                          }),
                      Text('Erupt.',
                          style: TextStyle(
                              color: Color(0xffFEBA01),
                              fontFamily: 'Gilory',
                              fontSize: 25)),
                      IconButton(
                          icon: Icon(
                            Ionicons.ios_search,
                            color: Color(0xffFEBA01),
                            size: 30,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
            body: Stack(
              children: <Widget>[
                Text(
                  'Collection 2020',
                  style: TextStyle(
                      color: Color(0xffFEBA01),
                      fontFamily: 'Gilory',
                      fontSize: 20),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 380,
                  child: Image(
                    image: AssetImage('assets/images/cover.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  void _toggle() {
    _innerDrawerKey.currentState.toggle(direction: InnerDrawerDirection.start);
  }
}
