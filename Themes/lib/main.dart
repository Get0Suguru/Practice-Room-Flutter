import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          // to configure color property of most components //
          colorSchemeSeed: Colors.red,

          // to change the theme brightness //
          brightness: Brightness.dark,

          // to change background color use scaffoldBackgroundColor property //
          scaffoldBackgroundColor: Color(0xFF101823),

          // to change the default font of your app //
          fontFamily: 'Narnoor',

          // to customise the appbar use appBarTheme property //
          appBarTheme: AppBarTheme(
            color: Color(0xFFFF4655),
            centerTitle: true,
            toolbarHeight: 90.0,
          ),

          // to change the card theme use cardTheme //
          cardTheme: CardTheme(
            color: Colors.red[200],
          ),

          // to change elevation button theme //
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.lightBlue,
                  primary: Colors.red[100],
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Narnoor')))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('A Simple Text 1'),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Button',
                  style: TextStyle(letterSpacing: 5.0),
                ),
              ),
              const Card(
                child: Text(
                  'A Simple Text 3',
                ),
              ),

              // even something in app does not have the theme part u can still customize it by wrapping it inside theme
              Theme(
                  data: ThemeData(),
                  child: FloatingActionButton(
                      onPressed: () {}, child: Icon(Icons.cabin))),
            ],
          ),
        ),
      ),
    ),
  );
}
