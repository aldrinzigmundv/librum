import 'package:flutter/material.dart';

//Holds the App Drawer data which includes all verse categories

class DrawerEntry {
  String name;
  IconData icon;

  DrawerEntry({ required this.name, required this.icon });
}

class DrawerEntries {
  List<DrawerEntry> drawerList = [
    DrawerEntry(name: 'Home', icon: Icons.home),
    DrawerEntry(name: 'Charity', icon: Icons.volunteer_activism),
    DrawerEntry(name: 'Enemies', icon: Icons.local_fire_department),
    DrawerEntry(name: 'Faith', icon: Icons.church),
    DrawerEntry(name: 'Family', icon: Icons.family_restroom),
    DrawerEntry(name: 'Fear', icon: Icons.sentiment_very_dissatisfied),
    DrawerEntry(name: 'Forgiveness', icon: Icons.handshake),
    DrawerEntry(name: 'Guidance', icon: Icons.visibility),
    DrawerEntry(name: 'Pride', icon: Icons.emoji_events),
    DrawerEntry(name: 'Sacrifice', icon: Icons.favorite),
    DrawerEntry(name: 'Wealth', icon: Icons.savings),
    DrawerEntry(name: 'Work', icon: Icons.work),
    DrawerEntry(name: "Donate", icon: Icons.person)
  ];

}

