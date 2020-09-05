import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import './RowStyle.dart' as rowstyle;

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  List dataJSON;

  Future<String> ambilData() async{
    http.Response hasil = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/photos"), headers: {
        "Accept": "application/json"
      }
    );

      if(this.mounted){
        this.setState((){
        dataJSON = jsonDecode(hasil.body);
      });
    }
  }

  @override
  void initState() {
    this.ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        itemCount: dataJSON==null ? 0 : dataJSON.length,
        itemBuilder: (context,i){
          return new rowstyle.RowStyle(gambar: dataJSON[i]['url'],judul: dataJSON[i]['title'], tanggal: "Monday, 23 March 2019",waktu: "10.00", tempat: "Convention Hall lt 3 UIN SUKA",);
        },
      ),
      
    );
  }
}