import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat-Black'),
      debugShowCheckedModeBanner: false, // turn off the banner on debug mode
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red[50],
            Colors.redAccent[100],
//            Colors.deepOrange[800],
//            Colors.red[700],
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 45.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      iconSize: 35.0,
                      onPressed: () {},
                    ),
                    Image.asset(
                      'images/FireLogo.png',
                      height: 48.0,
                      width: 48.0,
                      color: Colors.white,
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.white,
                      iconSize: 35.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 12.0, top: 30.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'images/logo.png',
                      color: Colors.white,
                      width: 300.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 75.0, right: 12.0, top: 15.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Spellcraft",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Search for your favorite spells!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 0.0, top: 15.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 300,
                      child: TextField(
                        controller: searchController,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'e.g. ray of frost',
                          labelText: 'Search for a spell',
                          hintStyle: TextStyle(fontFamily: 'Montserrat-Black'),
                          icon: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 95.0, right: 0.0, top: 25.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blueAccent[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        onPressed: () {
                          return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(searchController.text),
                                );
                              });
                        },
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.0,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
