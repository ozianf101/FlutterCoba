import 'package:flutter/material.dart';
import './RowStyle.dart' as row;

class Heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Center(
          child: new ListView(
        children: <Widget>[
          new row.RowStyle(gambar: "https://img.taste.com.au/p8F3dc6I/w506-h253-cfill/taste/2016/11/top-50-budget-meals-117761-1.jpeg",judul: "accusamus beatae ad facilis cum similique qui suNT",tanggal: "Senin, 20 April 2019",waktu: "11.00",tempat: "UIN suka",),
          new row.RowStyle(gambar: "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2017/06/600-calorie-meal-collection-main-image.jpg",judul: "accusamus beatae ad facilis cum similique qui sunt",tanggal: "Senin, 20 April 2019",waktu: "11.00",tempat: "UIN suka",),
          new row.RowStyle(gambar: "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2017/06/600-calorie-meal-collection-main-image.jpg",judul: "accusamus beatae ad facilis cum similique qui sunt",tanggal: "Senin, 20 April 2019",waktu: "11.00",tempat: "UIN suka",),
          new row.RowStyle(gambar: "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2017/06/600-calorie-meal-collection-main-image.jpg",judul: "accusamus beatae ad facilis cum similique qui sunt",tanggal: "Senin, 20 April 2019",waktu: "11.00",tempat: "UIN suka",),
        ],
      )),
    );
  }
}

class ListHealt extends StatelessWidget {
  ListHealt({this.gambar, this.judul, this.section});

  final String gambar;
  final String judul;
  final String section;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
        child: new Center(
          child: new Card(
            color: Colors.grey[100],
            elevation: 2.0,
            // child: new Row(
            //   children: <Widget>[
            //     new Container(
            //       padding: EdgeInsets.all(5.0),
            //       child: new Image(
            //       image: new NetworkImage(gambar),width: 50.0,),
            //     ),
            //     new Container(
            //       padding: EdgeInsets.all(5.0),
            //       child: new Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         new Text(judul,style: new TextStyle(fontSize: 20.0,color: Colors.indigo[900])),
            //         new Text(section,style: new TextStyle(fontSize: 10.0,color: Colors.grey[500]))
            //       ],
            //     ),
            //     ) 
            //   ],
            // ),
            child: new ListTile(
              leading: new Image(image: new NetworkImage(gambar),width: 50.0,),
              title: new Text(judul),
              subtitle:  new Text(section),
              trailing: new Icon(Icons.archive),
            ),
          ),
        ));
  }
}
