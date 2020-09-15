import 'package:Ecommerce/helpers/global.dart';

class PageTemplate extends StatelessWidget {
  final String title;
  final Widget bodyWidget;
  final PreferredSizeWidget appBar;
  PageTemplate({this.title, this.bodyWidget, this.appBar});

  @override
  Widget build(
    BuildContext context,
  ) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: this.appBar ??
            PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: AppBar(
                centerTitle: true,
                leading: IconButton(
                  tooltip: 'Back',
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  this.title,
                  style: TextStyle(
                      fontFamily: "Gilory", fontSize: 25, color: Colors.white),
                ),
                backgroundColor: Color(0xffCA1F3F),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
              ),
            ),
        body: this.bodyWidget,
      ),
    );
  }
}
