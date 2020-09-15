import 'package:Ecommerce/helpers/global.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IconThemeData iconThemeData = IconTheme.of(context);
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        //Welcome User
        new DrawerHeader(
            child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: new IconButton(
                  tooltip: 'Close',
                  icon: Icon(Icons.close,
                      color: iconThemeData.color, size: iconThemeData.size),
                  onPressed: () {
                    toggle();
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: Align(
                alignment: Alignment(-1.2, 0),
                child: RichText(
                  text: TextSpan(
                      text: 'Hello,\n',
                      style: Theme.of(context).textTheme.headline6,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'username',
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
        //List Draw
        Column(children: <Widget>[
          DrawerItem(
              icon: Ionicons.ios_home,
              title: "Home",
              ontap: () {
                toggle();
              }),
          DrawerItem(
              icon: Ionicons.ios_person,
              title: "Profile",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageTemplate(
                            title: 'Profile',
                            bodyWidget: PageProfile(),
                          )),
                );
              }),
          DrawerItem(
              icon: Ionicons.ios_albums,
              title: "Categories",
              ontap: () {
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
                              leading: IconButton(
                                tooltip: 'Back',
                                icon: Icon(Icons.arrow_back),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
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
          DrawerItem(
              icon: Ionicons.ios_cart,
              title: "Cart",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageTemplate(
                            title: 'Cart',
                          )),
                );
              }),
          DrawerItem(
              icon: Ionicons.ios_heart,
              title: "Favorites",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageTemplate(
                            title: 'Favorites',
                          )),
                );
              }),
          DrawerItem(
              icon: Ionicons.ios_help_buoy,
              title: "Help",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageTemplate(
                            title: 'Help',
                          )),
                );
              }),
          DrawerItem(
              icon: Ionicons.ios_settings,
              title: "Settings",
              ontap: () {
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
          DrawerItem(
              icon: Ionicons.md_log_out,
              title: "Logout",
              ontap: () {
                showAlert(context);
              }),
        ])
      ],
    );
  }
}
