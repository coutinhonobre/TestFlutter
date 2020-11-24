import 'package:bytebank_test/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../unit/matchers.dart';
import '../unit/mocks.dart';

void main() {
  testWidgets('Should display the main image when the Dashbord is opended',
      (WidgetTester tester) async {
    final mockContactDao = MockContactDao();
    await tester.pumpWidget(MaterialApp(
        home: Dashboard(
      contactDao: mockContactDao,
    )));
    final mainImage = find.byType(Image);
    expect(mainImage, findsOneWidget);
  });

  testWidgets(
      'Should display the transfer feature when the Dashboard is opened',
      (tester) async {
    final mockContactDao = MockContactDao();
    await tester.pumpWidget(MaterialApp(
        home: Dashboard(
      contactDao: mockContactDao,
    )));
    final transferFeatureItem = find.byWidgetPredicate((widget) =>
        featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
    expect(transferFeatureItem, findsOneWidget);
  });

  testWidgets(
      'Should display the transaction feed feature when the Dashboard is opened',
      (tester) async {
    final mockContactDao = MockContactDao();
    await tester.pumpWidget(MaterialApp(
        home: Dashboard(
      contactDao: mockContactDao,
    )));
    find.byWidgetPredicate((widget) =>
        featureItemMatcher(widget, 'Transaction Feed', Icons.description));
  });
}
