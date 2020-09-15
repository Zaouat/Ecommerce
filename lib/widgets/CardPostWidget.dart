import 'package:Ecommerce/helpers/global.dart';

class CardWidget extends StatefulWidget {
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> with TickerProviderStateMixin {
  AnimationController _controller;
  bool isLiked = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ContainerResponsive(
        width: 550,
        widthResponsive: true,
        //product image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Material(
          color: Colors.black.withOpacity(0.3),
          child: InkWell(
            onDoubleTap: () {
              setState(() {
                isLiked = !isLiked;
              });
              _controller.animateTo(1.0, duration: Duration(milliseconds: 700));
              _controller.addStatusListener((status) {
                if (status.toString().contains("completed")) {
                  _controller.reset();
                }
              });
            },
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Lottie.asset(
                      'assets/like.json',
                      controller: _controller,
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                //like icon
                ContainerResponsive(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                    height: 120,
                    width: 120,
                    heightResponsive: true,
                    widthResponsive: true,
                    child: isLiked == false
                        ? new IconButton(
                            icon: Icon(
                              Ionicons.ios_heart_empty,
                              color: Color(0xffCA1F3F),
                              size: 22,
                            ),
                            onPressed: null)
                        : new IconButton(
                            icon: Icon(
                              Ionicons.ios_heart,
                              color: Color(0xffCA1F3F),
                              size: 22,
                            ),
                            onPressed: null)),
                //title and price
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ContainerResponsive(
                      padding: EdgeInsetsResponsive.only(top: 25),
                      height: 200,
                      heightResponsive: true,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBoxResponsive(
                                width: 35,
                              ),
                              Expanded(
                                child: TextResponsive(
                                  'Viscose shirt with two-tone print',
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 48,
                                      fontFamily: 'Gilory'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBoxResponsive(
                                width: 35,
                              ),
                              TextResponsive(
                                "£32.12",
                                style: TextStyle(
                                    color: Color(0xff1F2322),
                                    fontSize: 48,
                                    fontFamily: 'Gilory'),
                              ),
                              SizedBoxResponsive(
                                width: 20,
                              ),
                              TextResponsive(
                                "£41.12",
                                style: TextStyle(
                                    color: Color(0xff1F2322).withOpacity(0.3),
                                    fontSize: 48,
                                    fontFamily: 'Gilory',
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Postpage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
