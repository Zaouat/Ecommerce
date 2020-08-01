import 'package:flutter/material.dart';



class PageSettings extends StatefulWidget {
  @override
  _PageSettingsState createState() => _PageSettingsState();
}


class _PageSettingsState extends State<PageSettings>{

  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        SizedBox(height: 50),
        new ListTile(
            leading: new Icon(
              Icons.language,
              color:  Color(0xffCA1F3F),
            ),
            title: Text(
              "Language",
              style: TextStyle(
                  color:  Color(0xffCA1F3F),
                  fontFamily: 'Gilory',
                  fontSize: 18),
            ),
            subtitle: Text('English',style: TextStyle(fontFamily: 'Gilory'),),
            trailing: IconButton(icon: Icon(
              Icons.keyboard_arrow_down
            ), onPressed: null),
            onTap: () {

            }),

        new ListTile(
            leading: new Icon(
              Icons.brightness_4,
              color:  Color(0xffCA1F3F),
            ),
            title: Text(
              "DarkMode",
              style: TextStyle(
                  color:  Color(0xffCA1F3F),
                  fontFamily: 'Gilory',
                  fontSize: 18),
            ),
            subtitle: Text('Dark',style: TextStyle(fontFamily: 'Gilory'),),
            trailing: Switch(
              activeColor:Color(0xffCA1F3F) ,
              value: true,
                 onChanged: (value){
                 },
             ),
            onTap: () {

            }),
        Divider(
          thickness: 1,
          indent: 20,
          endIndent: 40.0,
          height: 50,
          color: Color(0xffCA1F3F).withOpacity(0.2),
        ),
        new ListTile(
            leading: new Icon(
              Icons.phonelink_lock,
              color:  Color(0xffCA1F3F),
            ),
            title: Text(
              "Lock app in background",
              style: TextStyle(
                  color:  Color(0xffCA1F3F),
                  fontFamily: 'Gilory',
                  fontSize: 18),
            ),
            trailing: Switch(
              activeColor:Color(0xffCA1F3F) ,
              value: false,
              onChanged: (value){
              },
            ),
            onTap: () {

            }),
        new ListTile(
            leading: new Icon(
              Icons.fingerprint,
              color:  Color(0xffCA1F3F),
            ),
            title: Text(
              "Use fingerprint",
              style: TextStyle(
                  color:  Color(0xffCA1F3F),
                  fontFamily: 'Gilory',
                  fontSize: 18),
            ),
            trailing: Switch(
              activeColor:Color(0xffCA1F3F) ,
              value: true,
              onChanged: (value){
              },
            ),
            onTap: () {

            }),
        Divider(
          thickness: 1,
          indent: 20,
          endIndent: 40.0,
          height: 50,
          color: Color(0xffCA1F3F).withOpacity(0.2),
        ),
        new ListTile(
            leading: new Icon(
              Icons.insert_drive_file,
              color:  Color(0xffCA1F3F),
            ),
            title: Text(
              "Terms of service",
              style: TextStyle(
                  color:  Color(0xffCA1F3F),
                  fontFamily: 'Gilory',
                  fontSize: 18),
            ),
            onTap: () {

            }),
        new ListTile(
            leading: new Icon(
              Icons.history,
              color:  Color(0xffCA1F3F),
            ),
            title: Text(
              "Order history",
              style: TextStyle(
                  color:  Color(0xffCA1F3F),
                  fontFamily: 'Gilory',
                  fontSize: 18),
            ),
            onTap: () {


            }),

      ],
    );
  }
}