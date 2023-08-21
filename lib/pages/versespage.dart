import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:librum/data/verses.dart';

//Builds Pages for Verses using Verses() from data/verses.dart

class VersesPage extends StatelessWidget {
  VersesPage({super.key, required this.title, required this.verses});

  //Used to get the right Verse category for the AppBar and for the rest of the widgets to know what to display
  //All possible values are in data/drawerentry.dart which appears in the app drawer also
  final String title;

  late Verses verses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple.shade700,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: verses.get(title).length,
        itemBuilder: (contex, index) {
          return GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(
                  text:
                      '${verses.get(title)[index].text} - ${verses.get(title)[index].verse}'));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Verse copied to clipboard."),
                duration: Duration(seconds: 2),
              ));
            },
            child: Padding(
              padding: EdgeInsets.all(9.0),
              child: Card(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Padding(
                    padding: EdgeInsets.all(9.0),
                    child: ListTile(
                        title: Text(
                          verses.get(title)[index].text,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        subtitle: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.all(9.0),
                                child: Text(verses.get(title)[index].verse))),
                        subtitleTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2.0,
                            fontSize: 15.0)),
                  )
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
