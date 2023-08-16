import 'package:flutter/material.dart';
import 'package:librum/pages/home.dart';
import 'package:flutter/services.dart';
import 'package:librum/ui/appdrawer.dart';
import 'package:librum/data/verses.dart';

void main() {

  //initializes verses and random verses then passes it on

  Verses verses = Verses();

  late List<Verse> randomVerses = [];

  randomVerses.add(verses.versesList[verses.getRandom()]);
    while (randomVerses.length < 3) {
      int newIndex = verses.getRandom();

      if (!randomVerses.contains(newIndex)) {
        randomVerses.add(verses.versesList[newIndex]);
      }
    }

  runApp(MyHomePage(verses: verses, randomVerses: randomVerses));
}

