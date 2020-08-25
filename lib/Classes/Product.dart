import 'package:Ecommerce/helpers/global.dart';

class Product {
  String id;
  String title;
  String price;
  List<String> colors;
  List<String> sizes;
  String body;
  List<String> images;
  Category cat;
  bool saved;
  String url;
  List<Reviews> reviews;

  Product(this.id, this.title, this.price, this.colors, this.sizes, this.body,
      this.images, this.cat, this.saved, this.url, this.reviews);

}