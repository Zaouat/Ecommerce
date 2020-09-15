import 'package:Ecommerce/helpers/global.dart';


class Cart extends StatefulWidget {
  _CartPagetState createState() => _CartPagetState();
}

class _CartPagetState extends State<Cart>
    with TickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: "CURRENT ORDER"),
    Tab(text: "ORDER HISTORY"),
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
    return ListView(
      children: <Widget>[
        TabBar(
          indicatorColor: Color(0xffCA1F3F),
          labelColor: Color(0xff1F2322),
          labelStyle: TextStyle(fontSize: 16, fontFamily: 'Gilory'),
          labelPadding: EdgeInsets.only(top: 5),
          controller: tabController,
          tabs: myTabs,
        ),
        SizedBoxResponsive(
          height: 30,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              Current(),
              History()
            ],
          ),
        ),
      ],
    );
  }
}
