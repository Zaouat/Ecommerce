import 'package:Ecommerce/helpers/global.dart';


class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signupHeader() => Column(
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
              height: 120,
            )
          ],
        );
    signupFields() => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        //using Fb
        Container(
          width: MediaQuery.of(context).size.width - 10,
          height: 80,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
          child: FlatButton.icon(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                  side: BorderSide(color: Colors.transparent)),
              color: Color(0xff5960FF),
              onPressed: () {},
              icon: Icon(
                Ionicons.logo_facebook,
                color: Colors.white,
              ),
              label: Center(
                child: Text(
                  'Continue with Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GiloryL',
                      fontSize: 18),
                ),
              )),
        ),
        //Using Email or phone
        Container(
          width: MediaQuery.of(context).size.width - 80,
          height: 80,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
          child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                  side: BorderSide(color: Color(0xffCA1F3F), width: 1)),
              color: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreatAccPage()),
                );
              },
              child: Center(
                child: Text(
                  "I'll use email or phone",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GiloryL',
                      fontSize: 18),
                ),
              )),
        ),
        SizedBox(
          height: 50.0,
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
        SizedBox(
          height: 30.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Already have account? ",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GiloryL',
                  fontSize: 16),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Login!',
                  style: TextStyle(
                    color: Color(0xffCA1F3F),
                    fontFamily: 'GiloryL',
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
    signupBody() => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[signupHeader(), signupFields()],
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
              child: Center(
               child: signupBody(),
              )),
        ),
        Material(
          color: Colors.transparent,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: IconButton(
              iconSize: 28,
              tooltip: 'Back',
              icon: Icon(Icons.arrow_back),
              color: Color(0xffCA1F3F),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
