import 'package:flutter/material.dart';
import './RowSchedule.dart' as rowSchedule;

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Center(
        child: new ListView(
          children: <Widget>[
            rowSchedule.RowSchedule(gambar: "assets/img/like.png",judul: "Course 1",waktu: "11.00",tempat: "Convention Hall lt 3 UIN SUKA",),
            rowSchedule.RowSchedule(gambar: "assets/img/like.png",judul: "Course 2",waktu: "11.00",tempat: "Convention Hall lt 3 UIN SUKA",),
            rowSchedule.RowSchedule(gambar: "assets/img/like.png",judul: "Course 3",waktu: "11.00",tempat: "Convention Hall lt 3 UIN SUKA",),
            rowSchedule.RowSchedule(gambar: "assets/img/like.png",judul: "Course 4",waktu: "11.00",tempat: "Convention Hall lt 3 UIN SUKA",),
            rowSchedule.RowSchedule(gambar: "assets/img/like.png",judul: "Course 5",waktu: "11.00",tempat: "Convention Hall lt 3 UIN SUKA",),
            rowSchedule.RowSchedule(gambar: "assets/img/like.png",judul: "Course 6",waktu: "11.00",tempat: "Convention Hall lt 3 UIN SUKA",),
            rowSchedule.RowSchedule(gambar: "assets/img/like.png",judul: "Course 7",waktu: "11.00",tempat: "Convention Hall lt 3 UIN SUKA",)
          ],

          )
        ),      
    );
  }
}