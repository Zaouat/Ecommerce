import 'package:Ecommerce/helpers/global.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    loginFields() => Container(
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
                  hintText: 'Username'
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
                  hintText: 'Password'
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
            width: MediaQuery.of(context).size.width - 80,
            height: 45,
            child: RaisedButton(
              padding: EdgeInsets.all(12.0),
              shape: StadiumBorder(),
              child: Text(
                "LOG IN",
                style: TextStyle(color: Colors.white, fontFamily: 'Gilory'),
              ),
              color: Color(0xffCA1F3F),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeMobilePortrait()),
                );
              },
            ),
          ),
          SizedBox(
            height: 30.0,
          ),

          Material(
            color: Colors.transparent,
            child: InkWell(
              child: Text(
                "SIGN UP FOR AN ACCOUNT",
                style: TextStyle(color: Color(0xffCA1F3F), fontFamily: 'GiloryL'),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SignupPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
    loginHeader() => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 30),
            height: 120,
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        Text(
          "Welcome to Erupt",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xffCA1F3F),
              fontFamily: 'Gilory',
              fontSize: 30),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "Sign in to continue",
          style: TextStyle(
              color: Colors.white, fontFamily: 'GiloryL', fontSize: 20),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
    loginBody() => SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[loginHeader(), loginFields()],
      ),
    );
    return Material(
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
                loginBody(),
              ],
            ),
          ),
    );


  }




}

