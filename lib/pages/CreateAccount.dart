import 'package:Ecommerce/helpers/global.dart';


class CreatAccPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    creatHeader() => Column(
      children: <Widget>[
        SizedBoxResponsive(
          height: 150,
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
          height: 50.0,
        ),
        TextResponsive(
          "it's easier to sign up now",
          style: TextStyle(
              color: Colors.white, fontFamily: 'GiloryL', fontSize: 45),
        ),
        SizedBoxResponsive(
          height: 100,
        ),
      ],
    );
    creatFields() => Column(
      children: <Widget>[
        //username field
        ContainerResponsive(
          height: 200,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-100,
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
        ContainerResponsive(
          height: 200,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-100,
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
        ContainerResponsive(
          height: 200,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-100,
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
        ContainerResponsive(
          height: 30.0,
        ),
        ContainerResponsive(
          height: 70,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Switch(
                activeColor:Colors.white,
                value: true,
                onChanged: (value){
                  value=false;
                },
              ),
              TextResponsive(
                "I accept the policy and terms",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'GiloryL',
                    fontSize: 45),
              ),

            ],
          ),
        ),
        ContainerResponsive(
          height: 200.0,
        ),
        ContainerResponsive(
          height: 120,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-150,
          child: RaisedButton(
            padding: EdgeInsets.all(12.0),
            shape: StadiumBorder(),
            child: TextResponsive(
              "SIGN UP",
              style: TextStyle(color: Colors.white, fontFamily: 'Gilory',fontSize: 35),
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
              child: ListView(
                children: <Widget>[creatHeader(), creatFields()],
              ),),
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
  }}
