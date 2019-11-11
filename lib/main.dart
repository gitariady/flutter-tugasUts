import 'package:flutter/material.dart';
import 'package:latihan3/layout/note_detail.dart';
import 'package:latihan3/layout/note_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memasukan Data Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NoteList(),
    );
  }
}
