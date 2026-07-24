import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';
import 'package:librum/pages/homepage.dart';
import 'package:librum/data/verses.dart';

const String appWidgetId = 'QuoteWidgetProvider';

@pragma('vm:entry-point')
Future<void> backgroundCallback(Uri? uri) async {
  if (uri?.host == 'update_widget') {
    await updateHomeWidgetQuote();
  }
}

Future<void> updateHomeWidgetQuote() async {
  final verses = Verses();
  
  final previousVerse = await HomeWidget.getWidgetData<String>('quote_verse');
  
  int index;
  Verse verse;
  do {
    index = verses.getRandom();
    verse = verses.versesList[index];
  } while (verse.verse == previousVerse && verses.versesList.length > 1);

  await HomeWidget.saveWidgetData<String>('quote_text', verse.text);
  await HomeWidget.saveWidgetData<String>('quote_verse', verse.verse);
  await HomeWidget.saveWidgetData<String>('quote_formatted', '"${verse.text}" (${verse.verse})');
  await HomeWidget.updateWidget(
    name: appWidgetId,
    androidName: appWidgetId,
  );
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HomeWidget.registerInteractivityCallback(backgroundCallback);
  updateHomeWidgetQuote(); // Update widget on app launch

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Librum",
    theme: ThemeData(
      fontFamily: 'Roboto',
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFFFFFF),
        foregroundColor: Color(0xFF000000), // Text color
        elevation: 0,
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: Color(0xFFF3F3F3), width: 1)),
      ),
      cardTheme: const CardThemeData(
        color: Color(0xFFFFFFFF),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0xFFE8E8E8), width: 1),
        ),
        margin: EdgeInsets.zero,
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: Color(0xFF000000),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF000000),
        contentTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
      ),
    ),
    home: const HomePage(),
  ));
}
