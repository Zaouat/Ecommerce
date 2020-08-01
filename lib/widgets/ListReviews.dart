import 'package:Ecommerce/widgets/Review.dart';
import 'package:flutter/material.dart';

class ListReviewWidget extends StatefulWidget {
  _ReviewListWidgetState createState() => _ReviewListWidgetState();
}

class _ReviewListWidgetState extends State<ListReviewWidget> {
  @override
  Widget build(
      BuildContext context,
      ) {
    return ListView.builder(
      shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        padding: EdgeInsets.only(
            left: 15, right: 15,top: 15,bottom: 15),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int i) {
          return ReviewWidget();
        });
  }
}
