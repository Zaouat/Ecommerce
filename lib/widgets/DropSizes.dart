import 'package:Ecommerce/helpers/global.dart';
class DropSizes extends StatefulWidget {
  _DropSizes createState() => _DropSizes();
}

String dropdownValue = 'S';
class _DropSizes extends State <DropSizes> {
  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            TextResponsive(
              'Size',
              style: TextStyle(
                  color: Color(0xff1F2322).withOpacity(0.5),
                  fontSize: 60,
                  fontFamily: 'Gilory'),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 40,
              width: 180,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.5,
                      style: BorderStyle.solid,
                      color:
                      Color(0xff1F2322).withOpacity(0.3)),
                  borderRadius:
                  BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Theme(
                    data: ThemeData(
                        canvasColor: Colors.white,
                        primaryColor: Color(0xffCA1F3F),
                        accentColor: Colors.black,
                        hintColor: Color(0xffCA1F3F)),
                    child: DropdownButton(
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 24,
                      elevation: 16,
                      iconEnabledColor: Color(0xffCA1F3F),
                      style: TextStyle(
                          color: Color(0xffCA1F3F),
                          fontSize: 16,
                          fontFamily: 'Gilory'),
                      underline: Text(''),
                      value: dropdownValue,
                      items: <String>[
                        'S',
                        'M',
                        'L',
                        'XL',
                        'XXL'
                      ].map<DropdownMenuItem<String>>(
                              (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: TextResponsive(
                                value,
                                style: TextStyle(
                                    color: Color(0xffCA1F3F),fontSize: 50),
                              ),
                            );
                          }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });

                      },
                    )),
              ),
            )
          ],
        ),
      ],
    );
  }}