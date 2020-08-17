import 'package:Ecommerce/helpers/global.dart';


class SizechartPage extends StatefulWidget {
  _SizePagetState createState() => _SizePagetState();
}

class _SizePagetState extends State<SizechartPage>
    with TickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: "MEN"),
    Tab(text: "LADIES"),
    Tab(text: "YOUTH"),
  ];
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height+50;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        TabBar(
            indicatorColor: Color(0xffCA1F3F),
            labelColor: Color(0xff1F2322),
            labelStyle: TextStyle(fontSize: 16, fontFamily: 'Gilory'),
            labelPadding: EdgeInsets.only(top: 5),
            controller: tabController,
            tabs: myTabs,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: height+50,
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              MenWidget(),
              LadiesWidget(),
              YouthWidget()
            ],
          ),
        ),
        Container(
          height: 30,
        )
      ],
    );
  }
}
