import 'package:flutter/material.dart';
import 'package:ninjaid/pages/home.dart';
import 'package:ninjaid/pages/loading.dart';
import 'package:ninjaid/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/home', routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  }));
}
