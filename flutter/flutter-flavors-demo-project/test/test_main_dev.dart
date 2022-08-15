// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main_dev.dart';

void main() {
  testWidgets('Test main_dev', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Home());

    expect(find.text('Production'), findsNothing);
    expect(find.text('Development'), findsWidgets);
  });
}
