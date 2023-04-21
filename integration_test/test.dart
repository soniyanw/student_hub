import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:project_inc/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('verify counter', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      // expect(find.byTooltip('student'), findsOneWidget);
      // await tester.pumpAndSettle();
      final no = find.byKey(Key('student'));
      await tester.pumpAndSettle();
      // expect(find.text('0'), findsOneWidget);
      // final Finder increase = find.byTooltip('Increment');
      // await tester.tap(increase);
      // await tester.pumpAndSettle();
      // expect(find.text('1'), findsOneWidget);
      // final Finder decrease = find.byTooltip('Decrement');
      // await tester.tap(decrease);
      // await tester.pumpAndSettle();
      // expect(find.text('0'), findsOneWidget);
    });
  });
}
