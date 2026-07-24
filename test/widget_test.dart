import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:librum/pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Displays New Home Screen Widget alert box on first open and dismisses on Okay tap',
      (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(const MaterialApp(home: HomePage()));
    await tester.pumpAndSettle();

    // Verify alert box title and text are present
    expect(find.text('New Home Screen Widget'), findsOneWidget);
    expect(
      find.text('Bring daily Scripture to your home screen. Read, copy, or swap verses without opening the app.'),
      findsOneWidget,
    );
    expect(find.text('Okay'), findsOneWidget);

    // Tap 'Okay' button
    await tester.tap(find.text('Okay'));
    await tester.pumpAndSettle();

    // Verify alert box is dismissed
    expect(find.text('New Home Screen Widget'), findsNothing);
  });
}
