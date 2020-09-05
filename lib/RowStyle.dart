import 'package:flutter/material.dart';

import './GalleryCard.dart' as gcard;
import './GalleryThumbnail.dart' as gthumb;

class RowStyle extends StatelessWidget {

  final String gambar;
  final String judul;
  final String tanggal;
  final String waktu;
  final String tempat;

  RowStyle({this.gambar,this.judul,this.tanggal,this.waktu,this.tempat});
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(left: 24.0,top: 15.0,right: 24.0,bottom: 5.0),
      child: new Stack(
        children: <Widget>[
          new gthumb.GalleryThumbnail(judul: this.judul,tanggal: this.tanggal,waktu: this.waktu,tempat: this.tempat,),
          new gcard.GalleryCard(gambar: this.gambar,),
        ],
      ),
    );
  }
}



