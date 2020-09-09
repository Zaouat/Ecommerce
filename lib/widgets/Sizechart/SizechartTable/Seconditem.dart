import 'package:Ecommerce/helpers/global.dart';

class Secondtitem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
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
              Items(
                  title: 'SIZE WAIST',
                  size: 40,
                  color: Colors.white,
                  font: false,
                  center: false),
              Items(
                  title: '30',
                  size: 40,
                  color: Colors.white,
                  font: false,
                  center: false),
              Items(
                  title: '32',
                  size: 40,
                  color: Colors.white,
                  font: false,
                  center: false),
              Items(
                  title: '33',
                  size: 40,
                  color: Colors.white,
                  font: false,
                  center: false),
              Items(
                  title: '34',
                  size: 40,
                  color: Colors.white,
                  font: false,
                  center: false),
              Items(
                  title: '35..',
                  size: 40,
                  color: Colors.white,
                  font: false,
                  center: false),
            ]),
        TableRow(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            children: [
              Items(
                  title: 'Hips',
                  size: 40,
                  color: Color(0xff1F2322),
                  font: false,
                  center: false),
              Items(
                  title: '39 - 40',
                  size: 40,
                  color: Color(0xff1F2322),
                  font: false,
                  center: false),
              Items(
                  title: '40 - 41',
                  size: 40,
                  color: Color(0xff1F2322),
                  font: false,
                  center: false),
              Items(
                  title: '41 - 42',
                  size: 40,
                  color: Color(0xff1F2322),
                  font: false,
                  center: false),
              Items(
                  title: '42 - 43',
                  size: 40,
                  color: Color(0xff1F2322),
                  font: false,
                  center: false),
              Items(
                  title: '43 - 44..',
                  size: 40,
                  color: Color(0xff1F2322),
                  font: false,
                  center: false),
            ]),
      ],
    );
  }
}
