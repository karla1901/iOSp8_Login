import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log In',
       theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin de material app
  } //fin de widget
} //fin de class MiLoginApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //fin de class Ingresoal sistemastate

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
          ), //fin de IconButton
        ], //fin de actions
        title: Text('Ingreso al sistema Karla'),
      ), //fin de appBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
              ],
            ),
            if(!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.indigo,
                    labelText: 'Username',
                ],//fin de widget
              ),//fin de columna 
            
          ], //fin de children widget
        ), //fin de child listView
      ), //fin de area segura
    ); //fin de Scaffold
  } //fin de widget build
} //fin class _IngresoSistemaState
