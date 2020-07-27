import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

final List<String> _images = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg'
];

class ImageWidget extends StatefulWidget {
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget>{

  @override
  Widget build(BuildContext context) {
     return  Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Stack(
           children: <Widget>[
             PhotoViewGallery.builder(
               backgroundDecoration: BoxDecoration(
                 color: Colors.white,
               ),
               scrollPhysics: const BouncingScrollPhysics(),
               builder: (BuildContext context, int index) {
                 return PhotoViewGalleryPageOptions(
                   imageProvider: AssetImage(_images[index]),
                   initialScale: PhotoViewComputedScale.covered,
                 );
               },
               itemCount: _images.length,
               loadingBuilder: (context, event) => Center(
                 child: Container(
                   width: 20.0,
                   height: 20.0,
                   child: CircularProgressIndicator(
                     value: event == null
                         ? 0
                         : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                   ),
                 ),
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: <Widget>[
                 Material(
                   color: Colors.transparent,
                   child: Container(
                     margin: EdgeInsets.only(top: 20),
                     child: IconButton(
                       iconSize: 28,
                       tooltip: 'Close',
                       icon: Icon(Icons.close),
                       color: Color(0xffCA1F3F),
                       onPressed: () {
                         Navigator.pop(context);
                       },
                     ),
                   ),
                 ),
               ],
             ),
           ],
         ),
       );

  }
}
