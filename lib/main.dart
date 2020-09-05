import 'package:flutter/material.dart';
import 'dart:io';

import './heart.dart' as heart;
import './orang.dart' as orang;
import './settings.dart' as setting;
import './Schedule.dart' as jadwal;


void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController tabController;
  
  @override
  void initState() {
    tabController = new TabController(vsync: this,length: 3);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigo[900],
        title: new Text("Health"),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(icon:new Icon(Icons.fastfood),text: "Meals",),
            new Tab(icon:new Icon(Icons.view_agenda),text: "Schedule",),
            new Tab(icon:new Icon(Icons.settings),text: "Json",),
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new heart.Heart(),
          new jadwal.Schedule(),
          new setting.Settings()
        ],
      ),

      // bottomNavigationBar: new Material(
      //   color: Colors.indigo[500],
      //   child: TabBar(
      //     controller: tabController,
      //     tabs: <Widget>[
      //       new Tab(icon:new Icon(Icons.favorite),),
      //       new Tab(icon:new Icon(Icons.account_box),),
      //       new Tab(icon:new Icon(Icons.settings),),
      //     ],
      //   ),
      // ),
    );
  }
}