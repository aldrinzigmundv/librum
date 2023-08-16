import 'package:flutter/material.dart';
import 'package:librum/data/drawerentry.dart';
import 'package:librum/pages/home.dart';
import 'package:librum/data/verses.dart';
import 'package:librum/pages/versespage.dart';
import 'package:librum/pages/donate.dart';

//Builds the App Drawer Using Data from DrawerEntries() from data/drawerentry.dart

class AppDrawer extends StatelessWidget {
  AppDrawer({
    super.key,
    required this.verses, required this.randomVerses
  });

  late Verses verses;

  late List<Verse> randomVerses;

  DrawerEntries drawerEntries = DrawerEntries();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/drawer.jpg"),
                    fit: BoxFit.cover)),
            child: SizedBox()),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: drawerEntries.drawerList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(
                drawerEntries.drawerList[index].icon,
                color: Colors.deepPurple,
              ),
              title: Text(drawerEntries.drawerList[index].name),
              onTap: () {
                if (drawerEntries.drawerList[index].name != "Home" && drawerEntries.drawerList[index].name != "Donate") {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VersesPage(
                              title: drawerEntries.drawerList[index].name, verses: verses, randomVerses: randomVerses)));
                } else if (drawerEntries.drawerList[index].name == "Home") {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyHomePage(verses: verses, randomVerses: randomVerses)));
                } else {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => DonatePage(verses: verses, randomVerses: randomVerses)));
                }
              },
            );
          },
        ),
      ]),
    );
  }
}
