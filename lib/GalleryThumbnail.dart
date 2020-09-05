import 'package:flutter/material.dart';

class GalleryThumbnail extends StatelessWidget {

  final String judul;
  final String tanggal;
  final String waktu;
  final String tempat;

  GalleryThumbnail({this.judul,this.tanggal,this.waktu,this.tempat});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: new EdgeInsets.only(left: 46.0),
      padding: new EdgeInsets.only(left: 70.0),
      decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
                color: Colors.black12,
                blurRadius: 8.0,
                offset: new Offset(0.0, 5.0))
          ]),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Text(this.judul,style: new TextStyle(fontSize: 17.0,fontFamily: "Arial",fontWeight: FontWeight.bold),),
          new Row(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(right: 15.0),
                child: new Icon(Icons.calendar_today,size: 12.0,color: Colors.grey[700],),
              ),
              new Text(this.tanggal,style: new TextStyle(fontSize: 12.0,color: Colors.grey[600]),)
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(right: 15.0),
                child: new Icon(Icons.timer,size: 12.0,color: Colors.grey[700],),
              ),
              new Text(this.waktu,style: new TextStyle(fontSize: 12.0,color: Colors.grey[600]))
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(right: 15.0),
                child: new Icon(Icons.place, size: 12.0,color: Colors.grey[700],),
              ),
              new Text(this.tempat,style: new TextStyle(fontSize: 12.0,color: Colors.grey[600]))
            ],
          )
        ],
      ),
    );
  }
}