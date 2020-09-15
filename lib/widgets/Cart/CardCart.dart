import 'package:Ecommerce/helpers/global.dart';

class Cardcart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(15),
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ), //title,
      title: Container(
        width: MediaQuery.of(context).size.width,
        child: Text(
        'Viscose shirt with two-tone print',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
              color: mcolor,
              fontFamily: 'tt',
              fontSize: 20),
        ),
      ),
      subtitle: Text(
        "£32.12",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontFamily: 'tt',
            fontSize: 16),
      ),
    );
  }
}
