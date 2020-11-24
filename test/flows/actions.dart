import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../unit/matchers.dart';

Future<void> clickOnTheTransferFeatureItem(WidgetTester tester) async {
  final transferFeatureItem = find.byWidgetPredicate((widget) =>
      featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
  expect(transferFeatureItem, findsOneWidget);
  return await tester.tap(transferFeatureItem);
}
