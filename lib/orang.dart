import 'package:flutter/material.dart';
import 'dart:math';

final List<String> listBaru = ["Jantung","Paru-Paru","Hati","Lambung","Pankreas","Otak","Rahim"];

class Orang extends StatelessWidget{

  final List<String> data;
  Orang ({this.data});

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Container(
        color: Colors.red[100],
        child: new ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i){
          new ListTile(
            leading: new Icon(Icons.apps),
            title: new Text("${data[i]}"),
            subtitle: new Text("ini adalah bagian ${data[i]}"),
            trailing: new Icon(Icons.archive),
          );
        },
      ),
      ),
    );
  }
}