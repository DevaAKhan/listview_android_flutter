import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: Scaffold(
      appBar: AppBar(
        title: Text("BASIC LIST VIEW"),
      ),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("LANSCAPE"),
        subtitle: Text("Beautiful View!"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Tapped!");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_windows),
        title: Text("Windows"),
        onTap: () {
          debugPrint("Laptop Tapped!");
        },
      ),
      Text("Another List Element"),
      Container(
        color: Colors.redAccent,
        height: 50.0,
      )
    ],
  );

  return listView;
}