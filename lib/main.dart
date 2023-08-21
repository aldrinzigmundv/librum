import 'package:flutter/material.dart';
import 'package:librum/pages/home.dart';
import 'package:flutter/services.dart';
import 'package:librum/data/verses.dart';

void main() {

  //initializes verses and getting random verse then passes it on to HomePage in home.dart

  Verses verses = Verses();

  late int randomVerse = verses.getRandom();

  runApp(HomePage(verses: verses, randomVerse: randomVerse));
}

