import 'package:Ecommerce/helpers/global.dart';

class Firstitem extends StatelessWidget {
  final String gender;
  Firstitem(
      {Key key,
        @required this.gender,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
      return gender =="men" ?Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(
        color: Color(0xff444444),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
              color: Color(0xff444444),
            ),
            children: [
              Items(title: 'SIZE', size: 45, color: Colors.white,font: false,center:false),
              Items(title: 'NECK', size: 45, color: Colors.white,font: false,center:false),
              Items(title: 'CHEST', size: 45, color: Colors.white,font: false,center:false),
              Items(title: 'WAIST', size: 45, color: Colors.white,font: false,center:false),
              Items(title: 'SLEEVE LENGTH', size: 45, color: Colors.white,font: false,center:false),
            ]),
        TableRow(children: [
          Items(title: 'Small', size: 45, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '15.5 - 16', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '36 - 38', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '31 - 32', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '32.5 - 33', size: 40, color: Color(0xff1F2322),font: false,center:false),
        ]),
        TableRow(children: [
          Items(title: 'Medium', size: 45, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '16.5 - 17', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '39 - 41', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '33 - 35', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '33 - 33.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
        ]),
        TableRow(children: [
          Items(title: 'Large', size: 45, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '17 - 17.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '42 - 44', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '36 - 38', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '33.5 - 34', size: 40, color: Color(0xff1F2322),font: false,center:false),
        ]),
        TableRow(children: [
          Items(title: 'XL', size: 45, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '18 - 18.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '45 - 48', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '39 - 43', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '34 - 34.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
        ]),
        TableRow(children: [
          Items(title: '2XL', size: 45, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '18.5 - 19', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '49 - 52', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '44 - 48', size: 40, color: Color(0xff1F2322),font: false,center:false),
          Items(title: '34.5 - 35', size: 40, color: Color(0xff1F2322),font: false,center:false),
        ]),
      ],
    )
          :gender =="women"?Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(
          color: Color(0xff444444),
        ),
        children: [
          TableRow(
              decoration: BoxDecoration(
                color: Color(0xff444444),
              ),
              children: [
                Items(title: 'SIZE', size: 45, color: Colors.white,font: false,center:false),
                Items(title: 'NUMERIC SIZE', size: 45, color: Colors.white,font: false,center:false),
                Items(title: 'BUST', size: 45, color: Colors.white,font: false,center:false),
                Items(title: 'WAIST', size: 45, color: Colors.white,font: false,center:false),
                Items(title: 'HIP', size: 45, color: Colors.white,font: false,center:false),
              ]),
          TableRow(children: [
            Items(title: 'X-Small', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '2', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '34', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '26', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '36.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'Small', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '4 - 6', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '35 - 36', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '27 - 28', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '37.5 - 38.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'Medium', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '8 - 10', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '37 - 38', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '29 - 30', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '39.5 - 40.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'Large', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '12 - 14', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '39.5 - 41', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '31.5 - 33', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '42 - 43.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'XL', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '16 - 18', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '42.5 - 44.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '34.5 - 36.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '45 - 47', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: '2XL', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '20', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '46', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '38', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '48.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: '3XL', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '22', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '47.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '39.5', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '50', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
        ],
      ):Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(
          color: Color(0xff444444),
        ),
        children: [
          TableRow(
              decoration: BoxDecoration(
                color: Color(0xff444444),
              ),
              children: [
                Items(title: 'SIZE', size: 45, color: Colors.white,font: false,center:false),
                Items(title: 'NUMERIC SIZE', size: 45, color: Colors.white,font: false,center:false),
                Items(title: 'CHEST', size: 45, color: Colors.white,font: false,center:false),
                Items(title: 'WAIST', size: 45, color: Colors.white,font: false,center:false),
              ]),
          TableRow(children: [
            Items(title: 'XS', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '4', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '25 - 26', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '24 - 25', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'S', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '6 - 8', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '26 - 28', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '26 - 28', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'M', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '10 - 12', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '28 - 30', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '28 - 30', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'L', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '14 - 16', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '30 - 32', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '30 - 32', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
          TableRow(children: [
            Items(title: 'XL', size: 45, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '18 - 20', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '32 - 34', size: 40, color: Color(0xff1F2322),font: false,center:false),
            Items(title: '32 - 34', size: 40, color: Color(0xff1F2322),font: false,center:false),
          ]),
        ],
      );
  }
}
