import 'package:Ecommerce/helpers/global.dart';

class CatWidget extends StatelessWidget {
  Widget build(
    BuildContext context,
  ) {
    return SingleChildScrollView(
      child: DefaultTabController(
          length: 6,
          child: Padding(
            padding: EdgeInsetsResponsive.only(top: 20.0),
            child: Column(
              children: [
                TabBar(
                    physics: BouncingScrollPhysics(),
                    isScrollable: true,
                    unselectedLabelColor: Color(0xffCA1F3F),
                    indicatorColor: Color(0xffCA1F3F),
                    tabs: [
                      TabItem(
                        title: 'T-Shirts',
                        margin: EdgeInsets.only(left: 20),
                      ),
                      TabItem(
                        title: 'Hoodies',
                        margin: null,
                      ),
                      TabItem(
                        title: 'Jackets & Coats',
                        margin: null,
                      ),
                      TabItem(
                        title: 'Blazers',
                        margin: null,
                      ),
                      TabItem(
                        title: 'Pants',
                        margin: null,
                      ),
                      TabItem(
                        title: 'Shorts',
                        margin: null,
                      ),
                    ]),
                Column(
                  children: <Widget>[
                    ContainerResponsive(
                      padding: EdgeInsets.zero,
                      height: 650,
                      heightResponsive: true,
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          ListWidget(),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                        ],
                      ),
                    ),
                    SizedBoxResponsive(height: 40),
                    TrendWidget()
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
