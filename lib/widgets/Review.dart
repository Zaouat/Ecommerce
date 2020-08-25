import 'package:Ecommerce/helpers/global.dart';

class ReviewWidget extends StatelessWidget {
  Widget build(
    BuildContext context,
  ) {
    return Card(
        elevation: 0,
        color: Color(0xffCA1F3F),
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          Text(
                            'Guest 01',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilory',
                                fontSize: 17),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 10),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilory',
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  new Spacer(),
                  Text(
                    'April.01.2020',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilory',
                        fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilory',
                        fontSize: 13),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ],
          ),
        ));
  }
}
