import 'package:flutter/material.dart';

//Holds the App Drawer data which includes all verse categories

class CategoryEntry {
  String name;
  IconData icon;

  CategoryEntry({ required this.name, required this.icon });
}

class CategoryEntries {
  List<CategoryEntry> categoryList = [
    CategoryEntry(name: 'Charity', icon: Icons.volunteer_activism),
    CategoryEntry(name: 'Enemies', icon: Icons.local_fire_department),
    CategoryEntry(name: 'Faith', icon: Icons.church),
    CategoryEntry(name: 'Family', icon: Icons.family_restroom),
    CategoryEntry(name: 'Fear', icon: Icons.sentiment_very_dissatisfied),
    CategoryEntry(name: 'Forgiveness', icon: Icons.handshake),
    CategoryEntry(name: 'Guidance', icon: Icons.visibility),
    CategoryEntry(name: 'Pride', icon: Icons.emoji_events),
    CategoryEntry(name: 'Sacrifice', icon: Icons.favorite),
    CategoryEntry(name: 'Wealth', icon: Icons.savings),
    CategoryEntry(name: 'Work', icon: Icons.work),
    CategoryEntry(name: "Donate", icon: Icons.person)
  ];

}

