import 'package:flutter/material.dart';

class RowSchedule extends StatelessWidget {
  final String gambar;
  final String judul;
  final String waktu;
  final String tempat;

  RowSchedule({this.gambar, this.judul, this.waktu, this.tempat});
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.only(
            left: 20.0, top: 15.0, right: 24.0, bottom: 5.0),
        child: new Stack(
          children: <Widget>[
            new IconRow(),
            new ContentCourse(judul: this.judul,waktu: this.waktu,tempat: this.tempat,)
          ],
        ));
  }
}

class IconRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      padding: new EdgeInsets.only(right: 0.0),
      margin: new EdgeInsets.only(top: 15.0,right: 20.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: 25.0,
            height: 25.0,
            padding: new EdgeInsets.all(2.0),
            margin: new EdgeInsets.only(left: 20.0),
            alignment: FractionalOffset.centerLeft,
            decoration: new BoxDecoration(
              color: Colors.indigo[500],
                borderRadius: new BorderRadius.all(Radius.circular(5.0)),
          ),
          child: new Center(
              child: new Icon(Icons.mic,color: Colors.white,size: 20.0,),
            ),
          ),
          new Container(
            width: 2.0,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

class ContentCourse extends StatelessWidget {

  final String judul;
  final String waktu;
  final String tempat;

  ContentCourse({this.judul,this.waktu,this.tempat});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: new EdgeInsets.only(left: 75.0,right: 20.0),
      padding: new EdgeInsets.only(left: 0.0,right: 10.0),
      decoration: new BoxDecoration(
        shape: BoxShape.rectangle,
          color: Colors.white,
          border: new Border(bottom: BorderSide(color: Colors.grey[300],width: 1.5))
          ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Text(this.judul,style: new TextStyle(fontSize: 17.0,fontFamily: "Arial",fontWeight: FontWeight.bold),),
          new Row(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(right: 15.0,left: 25.0),
                child: new Icon(Icons.timer,size: 12.0,color: Colors.grey[700],),
              ),
              new Text(this.waktu,style: new TextStyle(fontSize: 12.0,color: Colors.grey[600]))
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(right: 15.0,left: 25.0),
                child: new Icon(Icons.place, size: 12.0,color: Colors.grey[700],),
              ),
              new Text(this.tempat,style: new TextStyle(fontSize: 12.0,color: Colors.grey[600]))
            ],
          ),
                  
        ],
      ),
    );
  }
}
