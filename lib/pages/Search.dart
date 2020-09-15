import 'package:Ecommerce/helpers/global.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

RefreshController _refreshController = RefreshController(initialRefresh: false);
final AppBarController appBarController = AppBarController();
StreamController<String> streamQuerry = StreamController.broadcast();
var items;
int searchCursor = 2;
var searchFuture;

class PageSearch extends StatefulWidget {
  @override
  _PageSearch createState() => _PageSearch();
}

class _PageSearch extends State<PageSearch> {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      bodyWidget: StreamBuilder<String>(
        stream: streamQuerry.stream,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          String querry = snapshot.data;
          if (querry != null) {
            return FutureBuilder(
                future: searchFuture,
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Searching",
                                  style: TextStyle(
                                      color: mcolor,
                                      fontFamily: 'Gilory')),
                              SizedBox(
                                height: 20,
                              ),
                              ProgressWidget(20)
                            ]),
                      );
                    default:
                      if (snapshot.hasError ||
                          snapshot.data['status_code'] == 333) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text("Try again",
                                    style: TextStyle(
                                        color: mcolor.withOpacity(0.7),
                                        fontSize: 18,
                                        fontFamily: 'tt')),
                              ),
                              Container(
                                child: Text("Can't load data",
                                    style: TextStyle(
                                        color: mcolor.withOpacity(0.7),
                                        fontSize: 18,
                                        fontFamily: 'tt')),
                              ),
                            ],
                          ),
                        );
                      } else {
                        items = snapshot.data['latest_posts'];
                        List<Product> searchData = List<Product>.from(items);
                        if (searchData.length != 0) {
                          return Container();
                        } else
                          return Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("No result",
                                      style: TextStyle(
                                          color: mcolor,
                                          fontSize: 22,
                                          fontFamily: 'tt')),
                                ]),
                          );
                      }
                  }
                });
          } else
            return Container();
        },
      ),
      appBar: SearchAppBar(
        searchHint: "search here..",
        fontFamilly: 'Gilory',
        searchFontSize: 18,
        primary: mcolor,
        appBarController: appBarController,
        autoSelected: true,
        mainTextColor: wcolor,
        onChange: (String value) {},
        onSubmit: (String value) async {
//          if (value != '') {
//            searchFuture = api.searchPosts(value, '1');
//            streamQuerry.add(value);
//          }
        },
        mainAppBar: AppBar(
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Material(type: MaterialType.transparency, child: Container())
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    searchCursor = 2;
  }
}
