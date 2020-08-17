import 'package:Ecommerce/helpers/global.dart';


class CreatAccPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    creatHeader() => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Sign Up",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'Gilory',
              fontSize: 40),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "it's easier to sign up now",
          style: TextStyle(
              color: Colors.white, fontFamily: 'GiloryL', fontSize: 18),
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
    creatFields() => Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: TextField(
              style: TextStyle(
                  color: Colors.white, fontFamily: 'GiloryL', fontSize: 18),
              maxLines: 1,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                    //borderSide: const BorderSide(),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.white, fontFamily: 'GiloryL', fontSize: 16),
                  filled: true,
                  contentPadding: EdgeInsets.only(top: 20),
                  fillColor: Colors.white24,
                  hintText: 'USERNAME'
              ),
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: TextField(
              style: TextStyle(
                  color: Colors.white, fontFamily: 'GiloryL', fontSize: 16),
              maxLines: 1,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                    //borderSide: const BorderSide(),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.white, fontFamily: 'GiloryL', fontSize: 18),
                  filled: true,
                  fillColor: Colors.white24,
                  contentPadding: EdgeInsets.only(top: 20),
                  hintText: 'EMAIL'
              ),
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: TextField(
              style: TextStyle(
                  color: Colors.white, fontFamily: 'GiloryL', fontSize: 16),
              maxLines: 1,
              cursorColor: Colors.white,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                    //borderSide: const BorderSide(),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.white, fontFamily: 'GiloryL', fontSize: 18),
                  filled: true,
                  fillColor: Colors.white24,
                  contentPadding: EdgeInsets.only(top: 20),
                  hintText: 'PASSWORD'
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 10,
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Switch(
                  activeColor:Colors.white,
                  value: true,
                  onChanged: (value){
                    value=false;
                  },
                ),
                Text(
                  "I accept the policy and terms",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'GiloryL',
                      fontSize: 16),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
            width: MediaQuery.of(context).size.width - 80,
            height: 45,
            child: RaisedButton(
              padding: EdgeInsets.all(12.0),
              shape: StadiumBorder(),
              child: Text(
                "SIGN UP",
                style: TextStyle(color: Colors.white, fontFamily: 'Gilory'),
              ),
              color: Color(0xffCA1F3F),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage()),
                );
              },
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 50,
                  width: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xff1C9CEB),
                    textColor: Colors.white,
                    child: Icon(
                      Ionicons.logo_twitter,
                      size: 20,
                    ),
                    padding: EdgeInsets.all(15),
                    shape: CircleBorder(),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 50,
                  width: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xffE34133),
                    textColor: Colors.white,
                    child: Icon(
                      Ionicons.logo_google,
                      size: 20,
                    ),
                    padding: EdgeInsets.all(15),
                    shape: CircleBorder(),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 50,
                  width: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xff0073AF),
                    textColor: Colors.white,
                    child: Icon(
                      Ionicons.logo_linkedin,
                      size: 20,
                    ),
                    padding: EdgeInsets.all(15),
                    shape: CircleBorder(),
                  )),
            ],
          ),
        ],
      ),
    );
    creataccBody() => SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[creatHeader(), creatFields()],
      ),
    );
    return Stack(
      children: <Widget>[
        Material(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  creataccBody(),
                ],
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Material(
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: IconButton(
                  iconSize: 28,
                  tooltip: 'Close',
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xffCA1F3F),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }}
