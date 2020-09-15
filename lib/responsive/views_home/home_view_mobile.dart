import 'package:Ecommerce/helpers/global.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeMobilePortrait extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

RefreshController _refreshController = RefreshController(initialRefresh: false);

void _onRefresh() async {
  // monitor network fetch
  await Future.delayed(Duration(milliseconds: 1000));
  // if failed,use refreshFailed()
  _refreshController.refreshCompleted();
}

void _onLoading() async {
  _refreshController.loadComplete();
}

//SlidingSheet
double slidingSheet = 0;
double heightSheet = 0;

class _MyHomePageState extends State<HomeMobilePortrait> {
  @override
  Widget build(BuildContext context) {
    IconThemeData iconThemeData = IconTheme.of(context);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.size == "Large") {
        //SlidingSheet
        heightSheet = sizingInformation.screenSize.height - 280;
        slidingSheet = 600;
      } else if (sizingInformation.size == "Medium") {
        //SlidingSheet
        heightSheet = sizingInformation.screenSize.height - 240;
        slidingSheet = 500;
      } else {
        //SlidingSheet
        heightSheet = sizingInformation.screenSize.height - 170;
        slidingSheet = 380;
      }
      return SmartRefresher(
        enablePullDown: true,
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        header: WaterDropMaterialHeader(color: mcolor, backgroundColor: wcolor),
        child: InnerDrawer(
          key: innerDrawerKey,
          onTapClose: true, // Will be removed in 0.6.0 version
          scale: IDOffset.horizontal(0.8),
          proportionalChildArea: true, // default true
          borderRadius: 20, // default 0
          leftAnimationType: InnerDrawerAnimation.static, // default static
          backgroundDecoration: BoxDecoration(
            color: Color(0xffCA1F3F),
          ),
          colorTransitionScaffold: Colors.transparent,
          leftChild: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Color(0xffCA1F3F),
              splashColor: Color(0xffFEBA01).withOpacity(0.5),
            ),
            child: Drawer(
              elevation: 0,
              child: DrawerWidget(),
            ),
          ),
          scaffold: Scaffold(
            backgroundColor: Colors.transparent,
            body: SlidingSheet(
              elevation: 0,
              cornerRadius: 20,
              snapSpec: SnapSpec(
                snap: true,
                snappings: [slidingSheet, heightSheet, double.infinity],
                positioning: SnapPositioning.pixelOffset,
              ),
              body: Material(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage('assets/images/cover.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    AppBar(
                      backgroundColor: Colors.transparent,
                      title: TextResponsive('Erupt.',
                          style: Theme.of(context).textTheme.headline1),
                      centerTitle: true,
                      elevation: 0,
                      leading: IconButton(
                          tooltip: 'Menu',
                          icon: Icon(Ionicons.ios_menu,
                              color: iconThemeData.color,
                              size: iconThemeData.size),
                          onPressed: () {
                            toggle();
                          }),
                      actions: [
                        IconButton(
                            tooltip: 'Search',
                            icon: Icon(Ionicons.ios_search,
                                color: iconThemeData.color,
                                size: iconThemeData.size),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageSearch()),
                              );
                            }),
                      ],
                    ),
                    Center(
                      child: Column(
                        children: <Widget>[
                          SizedBoxResponsive(
                            height: 250,
                          ),
                          TextResponsive(
                            'Collection 2020',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          TextResponsive(
                            'Erupt Fashion',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBoxResponsive(
                            height: 30,
                          ),
                          TextResponsive('Fashion features including industry.',
                              style: Theme.of(context).textTheme.headline3),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              builder: (context, state) {
                return Container(
                    color: Color(0xffF2F5FC),
                    height: sizingInformation.localWidgetSize.height,
                    child: CatWidget());
              },
            ),
          ),
        ),
      );
    });
  }
}
