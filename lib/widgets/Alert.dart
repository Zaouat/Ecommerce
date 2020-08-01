import 'package:Ecommerce/pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:material_dialog/material_dialog.dart';


void showAlert(BuildContext context) async {
  await showDialog(
      context: context,
      builder: (context) {
        return MaterialDialog(
          backgroundColor: Colors.white,
          content: Text(
            'Are you sure to logout ?',
            style: TextStyle(
                color: Color(0xff1F2322),
                fontSize: 20,
                fontFamily: 'Gilory'),
            textAlign: TextAlign.center,
          ),
          children: <Widget>[
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: FlatButton(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontFamily: "Gilory",
                              color: Color(0xffCA1F3F),
                              fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontFamily: "Gilory",
                              color: Color(0xffCA1F3F),
                              fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                      ),
                    ),
                  ]),
            )
          ],
        );
      });
}