import 'package:flutter/material.dart';

void main() => runApp(MyloginApp());

class MyloginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'web master',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin app
  } // finde de widget
} //fin de mi login

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //fin ingreso al sistemaaaaxd

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //accion widget
        title: Text('Sistem Yauz'),
      ), //apppbar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/images.png'),
                SizedBox(height: 16.0),
              ], //children<wi>
            ),
          ], //fin childre widget
        ), //fin list view
      ), //fin safe area
    ); //fin de scaffold
  } //fin de widget
} //fin
