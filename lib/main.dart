import 'package:flutter/material.dart';
import 'package:librum/pages/loadingpage.dart';

void main() {
  runApp(MaterialApp(
    title: "Librum",
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingPage(),
    },
  ));
}

