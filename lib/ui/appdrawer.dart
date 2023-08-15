import 'package:flutter/material.dart';
import 'package:librum/data/drawerentry.dart';
import 'package:librum/main.dart';
import 'package:librum/ui/versespage.dart';
import 'package:librum/ui/donate.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    super.key,
  });

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  DrawerEntries drawerEntries = DrawerEntries();

  @override
  void initState() {
    super.initState();
  }

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
                              title: drawerEntries.drawerList[index].name)));
                } else if (drawerEntries.drawerList[index].name == "Home") {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                } else {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => DonatePage()));
                }
              },
            );
          },
        ),
      ]),
    );
  }
}
