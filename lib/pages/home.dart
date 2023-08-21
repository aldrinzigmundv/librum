import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:librum/data/categories.dart';
import 'package:librum/data/verses.dart';
import 'package:librum/pages/donate.dart';
import 'package:librum/pages/versespage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.verses, required this.randomVerse});

  //Will be used for a random verse in the home screen
  late Verses verses;
  late int randomVerse;

  //Verse categories that goes just below the random verse
  CategoryEntries categoryEntries = CategoryEntries();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Librum',
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple.shade700,
              centerTitle: true,
              title: Text(
                'Librum',
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Colors.grey[50],
            body: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    Clipboard.setData(ClipboardData(
                              text:
                                  '${verses.versesList[randomVerse].text} - ${verses.versesList[randomVerse].verse}'));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Verse copied to clipboard."),
                            duration: Duration(seconds: 2),
                          ));
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(9.0, 18.0, 9.0, 9.0),
                    child: Card(
                        child: ListTile(
                      title: Padding(
                          padding: EdgeInsets.all(9.0),
                          child: Text(
                            verses.versesList[randomVerse].text,
                            style: TextStyle(fontSize: 18.0),
                          )),
                      subtitle: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(verses.versesList[randomVerse].verse)),
                      ),
                      subtitleTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0,
                          fontSize: 15.0),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Text(
                    "Tap verses to copy to your clipboard.",
                    style: TextStyle(fontSize: 15), textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(9.0, 18.0, 9.0, 9.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Categories',
                          style: TextStyle(fontSize: 24.0),
                        ))),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: categoryEntries.categoryList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(
                            categoryEntries.categoryList[index].icon,
                            color: Colors.deepPurple,
                          ),
                          title: Text(categoryEntries.categoryList[index].name),
                          onTap: () {
                            if (categoryEntries.categoryList[index].name != "Donate") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VersesPage(
                                          title:
                                              categoryEntries.categoryList[index].name,
                                          verses: verses)));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DonatePage()));
                            }
                          },
                        ),
                      );
                    })
              ],
            )),
          );
        }
      ),
    );
  }
}
