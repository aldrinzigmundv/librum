import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:librum/data/categories.dart';
import 'package:librum/data/verses.dart';
import 'package:librum/pages/donationpage.dart';
import 'package:librum/pages/versespage.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CategoryEntries categoryEntries = CategoryEntries();

  late Verses verses;
  late int randomVerseIndex;

  void _copyRandomVerse() {
    Clipboard.setData(ClipboardData(
        text:
            '"${verses.versesList[randomVerseIndex].text}" (${verses.versesList[randomVerseIndex].verse})'));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("Verse copied to clipboard."),
      duration: const Duration(seconds: 2),
    ));
  }

  void _categoryTapped(int index) {
    if (categoryEntries.categoryList[index].name != "Donate") {
      _goToVersesPage(index);
    } else {
      _goToDonationPage();
    }
  }

  void _goToVersesPage(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => VersesPage(
                title: categoryEntries.categoryList[index].name,
                verses: verses)));
  }

  void _goToDonationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DonationPage()));
  }

  @override
  void initState() {
    super.initState();
    verses = Verses();
    randomVerseIndex = verses.getRandom();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAndShowWidgetAlert();
    });
  }

  Future<void> _checkAndShowWidgetAlert() async {
    final prefs = await SharedPreferences.getInstance();
    final hasSeenAlert = prefs.getBool('has_seen_widget_alert') ?? false;

    if (!hasSeenAlert && mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(color: Color(0xFFE8E8E8), width: 1.0),
            ),
            title: const Text(
              'New Home Screen Widget',
              style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            content: const Text(
              'Bring daily Scripture to your home screen using our new widget. Read, copy, or swap verses without opening the app.',
              style: TextStyle(
                color: Color(0xFF1A1C1C),
                fontSize: 16.0,
                height: 1.4,
              ),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF000000),
                  foregroundColor: const Color(0xFFFFFFFF),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () async {
                  await prefs.setBool('has_seen_widget_alert', true);
                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }
                },
                child: const Text(
                  'Okay',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Librum'),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () => _copyRandomVerse(),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
              child: Card(
                  elevation: 0,
                  color: const Color(0xFF000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: ListTile(
                      title: Text(
                        verses.versesList[randomVerseIndex].text,
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                      subtitle: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                                verses.versesList[randomVerseIndex].verse)),
                      ),
                      subtitleTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 2.0,
                          fontSize: 15.0),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Tap a verse to copy to your clipboard.",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
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
                  elevation: 0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 6.0, horizontal: 8.0),
                  color: const Color(0xFF000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    leading: Icon(
                      categoryEntries.categoryList[index].icon,
                      color: Colors.white,
                    ),
                    title: Text(
                      categoryEntries.categoryList[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => _categoryTapped(index),
                  ),
                );
              })
        ],
      )),
    );
  }
}
