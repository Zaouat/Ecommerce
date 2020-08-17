import 'package:Ecommerce/helpers/global.dart';

class EndofList extends StatefulWidget {
  _EndListWidgetState createState() => _EndListWidgetState();
}

class _EndListWidgetState extends State<EndofList>
    with TickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
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
      child: Container(
        color: Color(0xffF2F5FC),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Lottie.asset(
                    'assets/more.json',
                    controller: _controller,
                    height: 40,
                    fit: BoxFit.fill,
                    repeat: true,
                    onLoaded: (composition) {
                      // Configure the AnimationController with the duration of the
                      // Lottie file and start the animation.
                      _controller
                        ..duration = composition.duration
                        ..repeat();
                    },
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Text("LOAD MORE",
                        style: TextStyle(
                            color: Color(0xff1F2322).withOpacity(0.5),
                            fontFamily: 'Gilory',
                            decoration: TextDecoration.underline,
                            fontSize: 15)),
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageTemplate(
                          title: 'Category',
                          bodyWidget: CategoryPage(),
                        )),
              );
            },
          ),
        ),
      ),
    );
  }
}
