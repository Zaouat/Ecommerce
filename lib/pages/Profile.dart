import 'package:Ecommerce/helpers/global.dart';

class PageProfile extends StatefulWidget {
  @override
  _PageProfileState createState() => _PageProfileState();
}


class _PageProfileState extends State<PageProfile> {
  bool _status = true;
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          child: new ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Container(
                    height: 200.0,
                    color: Colors.white,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: new Stack(fit: StackFit.loose, children: <Widget>[
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                    width: 140.0,
                                    height: 140.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                        image: new ExactAssetImage(
                                            'assets/images/avatar.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 90.0, right: 100.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new CircleAvatar(
                                      backgroundColor: Color(0xffCA1F3F),
                                      radius: 25.0,
                                      child: IconButton(
                                        icon: new Icon(
                                          Icons.camera_alt,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),

                                    )
                                  ],
                                )),
                          ]),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    color: Color(0xffFFFFFF),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //Personal information
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Personal Information',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xffCA1F3F),
                                            fontFamily: 'Gilory',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      _status ? _getEditIcon() : new Container(),
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(height: 10,),
                          //Name
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Name',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Gilory',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ]
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      style: TextStyle(fontFamily: 'GiloryL'),
                                      decoration: const InputDecoration(
                                        hintStyle:TextStyle(
                                            fontFamily: 'GiloryL',
                                            ),
                                        hintText: "Your name",
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                        ),
                                      ),
                                      cursorColor: Color(0xffCA1F3F),
                                      enabled: !_status,
                                      autofocus: !_status,

                                    ),
                                  ),
                                ],
                              )),
                          //Email
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Email',
                                        style: TextStyle(
                                            fontFamily: 'Gilory',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      style: TextStyle(fontFamily: 'GiloryL'),
                                      decoration: const InputDecoration(
                                          hintStyle:TextStyle(
                                            fontFamily: 'GiloryL',
                                          ),
                                          hintText: "Your email",

                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                        ),
                                      ),
                                      cursorColor: Color(0xffCA1F3F),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Mobile number',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Gilory',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      style: TextStyle(fontFamily: 'GiloryL'),
                                      decoration: const InputDecoration(
                                          hintStyle:TextStyle(
                                            fontFamily: 'GiloryL',
                                          ),
                                          hintText: "Your mobile number",
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                        ),
                                      ),
                                      cursorColor: Color(0xffCA1F3F),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: new Text(
                                        'Zip Code',
                                        style: TextStyle(
                                            fontFamily: 'Gilory',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    flex: 2,
                                  ),

                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: new TextField(
                                        style: TextStyle(fontFamily: 'GiloryL'),

                                        decoration: const InputDecoration(
                                            hintStyle:TextStyle(
                                              fontFamily: 'GiloryL',
                                            ),
                                            hintText: "Your zip code",
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                          ),
                                        ),
                                        cursorColor: Color(0xffCA1F3F),
                                        enabled: !_status,
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: new Text(
                                        'Adress',
                                        style: TextStyle(
                                            fontFamily: 'Gilory',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    flex: 2,
                                  ),

                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: new TextField(
                                        style: TextStyle(fontFamily: 'GiloryL'),
                                        decoration: const InputDecoration(
                                            hintStyle:TextStyle(
                                              fontFamily: 'GiloryL',
                                            ),
                                            hintText: "Your Adress",
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                          ),
                                        ),
                                        cursorColor: Color(0xffCA1F3F),
                                        enabled: !_status,
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                          SizedBox(height: 20,),
                          //Cart information
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Cart Information',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: 'Gilory',
                                            color:Color(0xffCA1F3F),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      _status ? _getEditIcon() : new Container(),
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(height: 10,),
                          //Credit card Number
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        new Text(
                                          'Credit card Number',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: 'Gilory',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ]
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      style: TextStyle(fontFamily: 'GiloryL'),
                                      decoration: const InputDecoration(
                                        hintStyle:TextStyle(
                                          fontFamily: 'GiloryL',
                                        ),
                                        hintText: "Your Credit card Number",
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                        ),
                                      ),
                                      cursorColor: Color(0xffCA1F3F),
                                      enabled: !_status,
                                      autofocus: !_status,

                                    ),
                                  ),
                                ],
                              )),
                         //MM/YY
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        new Text(
                                          'MM/YY',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: 'Gilory',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ]
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      style: TextStyle(fontFamily: 'GiloryL'),
                                      decoration: const InputDecoration(
                                        hintStyle:TextStyle(
                                          fontFamily: 'GiloryL',
                                        ),
                                        hintText: "Your MM/YY",
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                        ),
                                      ),
                                      cursorColor: Color(0xffCA1F3F),
                                      enabled: !_status,
                                      autofocus: !_status,

                                    ),
                                  ),
                                ],
                              )),
                          //CVV
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        new Text(
                                          'Cvv',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: 'Gilory',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ]
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      style: TextStyle(fontFamily: 'GiloryL'),
                                      decoration: const InputDecoration(
                                        hintStyle:TextStyle(
                                          fontFamily: 'GiloryL',
                                        ),
                                        hintText: "Your CVV",
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                        ),
                                      ),
                                      cursorColor: Color(0xffCA1F3F),
                                      enabled: !_status,
                                      autofocus: !_status,

                                    ),
                                  ),
                                ],
                              )),
                          //Name on card
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        new Text(
                                          'Name on card',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: 'Gilory',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ]
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      style: TextStyle(fontFamily: 'GiloryL'),
                                      decoration: const InputDecoration(
                                        hintStyle:TextStyle(
                                          fontFamily: 'GiloryL',
                                        ),
                                        hintText: "Your name",
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffCA1F3F)),
                                        ),
                                      ),
                                      cursorColor: Color(0xffCA1F3F),
                                      enabled: !_status,
                                      autofocus: !_status,

                                    ),
                                  ),
                                ],
                              )),

                          !_status ? _getActionButtons() : new Container(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );

  }
  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Save",style: TextStyle(fontFamily: 'Gilory')),
                    textColor: Colors.white,
                    color: Color(0xffCA1F3F),
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      });
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Cancel",style: TextStyle(fontFamily: 'Gilory')),
                    textColor: Colors.white,
                    color: Color(0xffFEBA01),
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      });
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Color(0xffFEBA01),
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
