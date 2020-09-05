import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {

  final String gambar;

  GalleryCard({this.gambar});
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: 100.0,
        height: 100.0,
        padding: new EdgeInsets.all(2.0),
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        alignment: FractionalOffset.centerLeft,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(10.0)),
          image: new DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(this.gambar)
          )
        ),
          
        );
  }
}