import 'package:Ecommerce/helpers/global.dart';

class Imagechart extends StatelessWidget{
  final String image;
  const Imagechart(
      {Key key,
        @required this.image,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      height: 500,
      heightResponsive: true,
      width: MediaQuery.of(context).size.width / 1.7,
      widthResponsive: false,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }

}