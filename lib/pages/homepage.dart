import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:librum/data/categories.dart';
import 'package:librum/data/verses.dart';
import 'package:librum/pages/donationpage.dart';
import 'package:librum/pages/versespage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.verses, required this.randomVerseIndex});

  final Verses verses;
  final int randomVerseIndex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CategoryEntries categoryEntries = CategoryEntries();

  late Verses verses;
  late int randomVerse;

  copyRandomVerse() {
    Clipboard.setData(ClipboardData(
        text:
            '${widget.verses.versesList[widget.randomVerseIndex].text} - ${widget.verses.versesList[widget.randomVerseIndex].verse}'));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Verse copied to clipboard."),
      duration: Duration(seconds: 2),
    ));
  }

  goToVersesPage(index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => VersesPage(
                title: categoryEntries.categoryList[index].name,
                verses: widget.verses)));
  }

  goToDonationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DonationPage()));
  }

  @override
  void initState() {
    super.initState();
    verses = widget.verses;
    randomVerse = widget.randomVerseIndex;
  }

  @override
  Widget build(BuildContext context) {
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
            onTap: () => copyRandomVerse(),
            child: Padding(
              padding: EdgeInsets.fromLTRB(9.0, 18.0, 9.0, 9.0),
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(9.0),
                child: ListTile(
                  title: Text(
                    widget.verses.versesList[widget.randomVerseIndex].text,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Text(widget
                            .verses.versesList[widget.randomVerseIndex].verse)),
                  ),
                  subtitleTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2.0,
                      fontSize: 15.0),
                ),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Text(
              "Tap a verse to copy to your clipboard.",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
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
                      if (categoryEntries.categoryList[index].name !=
                          "Donate") {
                        goToVersesPage(index);
                      } else {
                        goToDonationPage();
                      }
                    },
                  ),
                );
              })
        ],
      )),
    );
  }
}
