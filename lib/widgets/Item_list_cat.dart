import 'package:Ecommerce/helpers/global.dart';

class Itemlist extends StatelessWidget{
  final String title;
  Itemlist(
      {Key key,
        @required this.title,
      });
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print("Category clicked");
        },
        child: Container(
          height: 30,
          child: Row(
            children: <Widget>[
              SizedBox(width: 95),
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff1F2322),
                    fontFamily: 'Gilory',
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

}