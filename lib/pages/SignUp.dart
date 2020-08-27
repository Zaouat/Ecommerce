import 'package:Ecommerce/helpers/global.dart';


class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SignupHeader() => Column(
          children: <Widget>[
            SizedBoxResponsive(
              height: 100,
            ),
            Center(
              child: ContainerResponsive(
                margin: EdgeInsetsResponsive.only(bottom: 20),
                height: 460,
                width:460,
                widthResponsive: true,
                heightResponsive: true,
                child: Image(
                  image: AssetImage('assets/icon & splash/splash.png'),
                ),
              ),
            ),
            TextResponsive(
              "Sign Up",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'Gilory',
                  fontSize: 80),
            ),
            SizedBoxResponsive(
              height: 15.0,
            ),
            TextResponsive(
              "it's easier to sign up now",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'GiloryL', fontSize: 45),
            ),
            SizedBoxResponsive(
              height: 150,
            ),
          ],
        );
    SignupFields() => Column(
      children: <Widget>[
        //using Fb button
        ContainerResponsive(
          height: 120,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-100,
          child: FlatButton.icon(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                  side: BorderSide(color: Colors.transparent)),
              color: Color(0xff5960FF),
              onPressed: () {},
              icon: Icon(
                Ionicons.logo_facebook,
                color: Colors.white,
                size:25
              ),
              label: Center(
                child: TextResponsive(
                  'Continue with Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GiloryL',
                      fontSize: 45),
                ),
              )),
        ),
        SizedBoxResponsive(
          height: 60.0,
        ),
        //Using Email or phone button
        ContainerResponsive(
          height: 120,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-150,
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
                child: TextResponsive(
                  "I'll use email or phone",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GiloryL',
                      fontSize: 45),
                ),
              )),
        ),
        SizedBoxResponsive(
          height: 120.0,
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
        SizedBoxResponsive(
          height: 80.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextResponsive(
              "Already have account? ",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GiloryL',
                  fontSize: 45),
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
                child: TextResponsive(
                  'Login!',
                  style: TextStyle(
                    color: Color(0xffCA1F3F),
                    fontFamily: 'GiloryL',
                    fontSize: 45,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
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
              child:ListView(
                children: <Widget>[ SignupHeader(), SignupFields()],
              ),
            ),
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
