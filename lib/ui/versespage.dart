import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:librum/ui/appdrawer.dart';
import 'package:librum/data/verses.dart';

class VersesPage extends StatelessWidget {
  VersesPage({super.key, required this.title});

  final String title;

  final Verses verses = Verses();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      drawer: const AppDrawer(),
      body: ListView.separated(
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
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                    title: Text(verses.get(title)[index].text),
                    subtitle: Align(
                        alignment: Alignment.centerRight,
                        child: Text(verses.get(title)[index].verse)),
                    subtitleTextStyle: TextStyle(
                        fontWeight: FontWeight.bold, wordSpacing: 2.0))
              ]),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10.0,
          );
        },
      ),
    );
  }
}
