import 'package:flutter/material.dart';

import 'package:librum/data/verses.dart';

import 'package:librum/pages/homepage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  late Verses verses;
  late int randomVerseIndex;

  startup() {
    Future.delayed(const Duration(seconds: 1), () async {
      verses = Verses();
      randomVerseIndex = verses.getRandom();
      goToHomePage();
    });
  }

  goToHomePage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  verses: verses,
                  randomVerseIndex: randomVerseIndex,
                )));
  }

  @override
  void initState() {
    super.initState();
    startup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple.shade700,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(9.0),
                child: Image.asset('assets/icons/librum.png')),
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: Text(
                'Librum',
                style: TextStyle(color: Colors.white, fontSize: 27.0),
              ),
            )
          ],
        )));
  }
}
