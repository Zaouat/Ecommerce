import 'package:Ecommerce/helpers/global.dart';

import '../helpers/global.dart';

class PageCategories extends StatelessWidget {
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(
      dividerColor: Colors.transparent,
      focusColor: Color(0xffCA1F3F),
      accentColor: Color(0xffCA1F3F),
    );
    return Theme(
      data: theme,
      child: ListView(
        padding: EdgeInsets.only(top:30,bottom:30),
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          //Category
          CatItem(image: 'assets/images/women.jpg',title: "Women",description:'Lorem Ipsum is simply dummy text.'),
          SizedBox(height: 20),
          CatItem(image: 'assets/images/women.jpg',title: "Men",description:'Lorem Ipsum is simply dummy text.'),
          SizedBox(height: 20),
          CatItem(image: 'assets/images/women.jpg',title: "Kids",description:'Lorem Ipsum is simply dummy text.'),
          SizedBox(height: 20),
          CatItem(image: 'assets/images/women.jpg',title: "Lifestyle",description:'Lorem Ipsum is simply dummy text.'),
          SizedBox(height: 20),
          CatItem(image: 'assets/images/women.jpg',title: "Gadgets",description:'Lorem Ipsum is simply dummy text.'),
        ],
      ),
    );
  }
}
