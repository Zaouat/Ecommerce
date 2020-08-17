import 'package:Ecommerce/helpers/global.dart';

class HomeMobilePortrait extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeMobilePortrait> {
  @override
  Widget build(BuildContext context) {
    IconThemeData iconThemeData = IconTheme.of(context);
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.circular(40.0),
    );
    return InnerDrawer(
      key: _innerDrawerKey,
      onTapClose: true, // Will be removed in 0.6.0 version
      scale: IDOffset.horizontal(0.8),
      // set the offset in both directions
      proportionalChildArea: true, // default true
      borderRadius: 30, // default 0
      leftAnimationType: InnerDrawerAnimation.static, // default static
      backgroundDecoration: BoxDecoration(
        color: Color(0xffCA1F3F),
      ),
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
                        icon: Icon(Icons.close,
                            color: iconThemeData.color,
                            size: iconThemeData.size),
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
                            style: Theme.of(context).textTheme.headline6,
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
                                    bodyWidget: PageProfile(),
                                  )),
                        );
                      }),
                  new ListTile(
                      leading: new Icon(
                        Ionicons.ios_albums,
                        color: Color(0xffFEBA01),
                      ),
                      title: Align(
                        alignment: Alignment(-1.2, 0),
                        child: Text(
                          "Categories",
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
                                    bodyWidget: PageCategories(),
                                    appBar: AppBar(
                                      title: Text(
                                        'Categories',
                                        style: TextStyle(
                                            fontFamily: "Gilory",
                                            fontSize: 25,
                                            color: Colors.white),
                                      ),
                                      centerTitle: true,
                                      backgroundColor: Color(0xffCA1F3F),
                                      elevation: 4,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(30),
                                        ),
                                      ),
                                      actions: <Widget>[
                                        IconButton(
                                            tooltip: 'Sort',
                                            icon: Icon(
                                              Ionicons.ios_options,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                        IconButton(
                                            tooltip: 'Search',
                                            icon: Icon(
                                              Ionicons.ios_search,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
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
                        Ionicons.ios_help_buoy,
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
                        showAlert(context);
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
        color: Color(0xffF2F5FC),
        maxHeight: MediaQuery.of(context).size.height,
        panel: CatWidget(),
        body: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: AppBar(
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
                            tooltip: 'Menu',
                            icon: Icon(Ionicons.ios_menu,
                                color: iconThemeData.color,
                                size: iconThemeData.size),
                            onPressed: () {
                              _toggle();
                            }),
                        Text('Erupt.',
                            style: Theme.of(context).textTheme.headline5),
                        IconButton(
                            tooltip: 'Search',
                            icon: Icon(Ionicons.ios_search,
                                color: iconThemeData.color,
                                size: iconThemeData.size),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            body: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height - 300,
                  child: Image(
                    image: AssetImage('assets/images/cover.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120,
                      ),
                      Center(
                        child: Text(
                          'Collection 2020',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Erupt Fashion',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilory',
                              fontSize: 38),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'Fashion features including industry.',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GiloryL',
                              fontSize: 20),
                        ),
                      ),
                    ],
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
