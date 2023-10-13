import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:librum/data/verses.dart';

class VersesPage extends StatefulWidget {
  VersesPage({super.key, required this.title, required this.verses});

  final String title;
  final Verses verses;

  @override
  State<VersesPage> createState() => _VersesPageState();
}

class _VersesPageState extends State<VersesPage> {
  late String title;
  late Verses verses;

  _copyVerse(index) {
    Clipboard.setData(ClipboardData(
        text:
            '${widget.verses.get(widget.title)[index].text} - ${widget.verses.get(widget.title)[index].verse}'));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Verse copied to clipboard."),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  void initState() {
    super.initState();
    verses = widget.verses;
    title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple.shade700,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.grey[50],
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.verses.get(widget.title).length,
        itemBuilder: (contex, index) {
          return GestureDetector(
            onTap: () {
              _copyVerse(index);
            },
            child: Padding(
              padding: EdgeInsets.all(9.0),
              child: Card(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Padding(
                    padding: EdgeInsets.all(9.0),
                    child: ListTile(
                        title: Text(
                          widget.verses.get(widget.title)[index].text,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        subtitle: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.all(9.0),
                                child: Text(widget.verses
                                    .get(widget.title)[index]
                                    .verse))),
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
