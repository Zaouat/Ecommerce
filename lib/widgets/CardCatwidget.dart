import 'package:Ecommerce/helpers/global.dart';

class CardCatWidget extends StatefulWidget {
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardCatWidget>
    with TickerProviderStateMixin {
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
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.only(bottom: 20, left: 5, right: 5),
      child: Container(
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Lottie.asset(
                    'assets/like.json',
                    controller: _controller,
                    height: 100,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      child: isLiked == false
                          ? new IconButton(
                              icon: Icon(
                                Ionicons.ios_heart_empty,
                                color: Color(0xffCA1F3F),
                              ),
                              onPressed: null)
                          : new IconButton(
                              icon: Icon(
                                Ionicons.ios_heart,
                                color: Color(0xffCA1F3F),
                              ),
                              onPressed: null)),
                ),
                Container(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        height: 65,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Expanded(
                                  child: new Text(
                                    'Viscose shirt with two-tone print',
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
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
                                SizedBox(width: 10),
                                Text(
                                  "£32.12",
                                  style: TextStyle(
                                      color: Color(0xff1F2322),
                                      fontSize: 15,
                                      fontFamily: 'Gilory'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "£41.12",
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.3),
                                      fontSize: 15,
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
