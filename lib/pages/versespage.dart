import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:librum/data/verses.dart';

class VersesPage extends StatefulWidget {
  const VersesPage({super.key, required this.title, required this.verses});

  final String title;
  final Verses verses;

  @override
  State<VersesPage> createState() => _VersesPageState();
}

class _VersesPageState extends State<VersesPage> {
  late String title;
  late Verses verses;

  void _copyVerse(int index) {
    Clipboard.setData(ClipboardData(
        text:
            '"${widget.verses.get(widget.title)[index].text}" (${widget.verses.get(widget.title)[index].verse})'));
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
        title: Text(widget.title),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.verses.get(widget.title).length,
        itemBuilder: (contex, index) {
          return GestureDetector(
            onTap: () {
              _copyVerse(index);
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: const Color(0xFF000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: ListTile(
                        title: Text(
                          widget.verses.get(widget.title)[index].text,
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
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
                            fontSize: 15.0,
                            color: Colors.white)),
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
