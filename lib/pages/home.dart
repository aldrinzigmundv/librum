import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:librum/ui/appdrawer.dart';
import 'package:librum/data/verses.dart';

//Builds the Home Screen with the Random Verses and AppDrawer() from ui/appdrawer.dart

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.verses, required this.randomVerses});

  late Verses verses;

  late List<Verse> randomVerses;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade700,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text("Librum", style: TextStyle(color: Colors.white)),
        ),
        drawer: AppDrawer(verses: verses, randomVerses: randomVerses),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 25.0, 0, 10.0),
                child: Text(
                  "Three Random Verses",
                  style: TextStyle(fontSize: 21),
                ),
              ),
              SizedBox(height: 10.0),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(
                          text:
                              '${randomVerses[index].text} - ${randomVerses[index].verse}'));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Verse copied to clipboard."),
                        duration: Duration(seconds: 2),
                      ));
                    },
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                              title: Text(randomVerses[index].text),
                              subtitle: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(randomVerses[index].verse)),
                              subtitleTextStyle: TextStyle(
                                  fontWeight: FontWeight.bold, wordSpacing: 2.0))
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10.0,
                  );
                },
              ),
              Container(
                  child: Text(
                    "Tap a verse to copy to your clipboard.",
                    style: TextStyle(fontSize: 15),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 15.0, 0, 20.0))
            ],
          ),
        ),
      ),
    );
  }
}
