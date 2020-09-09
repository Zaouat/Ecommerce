import 'package:Ecommerce/helpers/global.dart';

class ProgressWidget extends StatelessWidget {
  final double size;
  ProgressWidget(this.size);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Center(
          child: CircularProgressIndicator(
        strokeWidth: 3,
        backgroundColor: wcolor,
        valueColor: AlwaysStoppedAnimation<Color>(mcolor),
      )),
    );
  }
}
