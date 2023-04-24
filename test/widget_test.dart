// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import 'package:project_inc/main.dart';
//
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());
//
//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);
//
//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();
//
//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  group('Authentication Tests', () {
    final Services auth = ServiceImp();

    setUp(() async {
      await FirebaseAuth.instance.signOut();
    });

    test('Sign In with Correct Credentials', () async {
      await auth.signin(mail: 'sonu@gmail.com', pass: '66666666');
      expect(FirebaseAuth.instance.currentUser, isNotNull);
    });

    // test('Sign Up with Correct Credentials', () async {
    //   await auth.signup(
    //       name: 'Test User',
    //       mail: 'testuser@example.com',
    //       pass: 'testpass');
    //   expect(FirebaseAuth.instance.currentUser, isNotNull);
    // });

    test('Sign Up with Incorrect Credentials', () async {
      expect(
          () async =>
              await auth.signup(name: 'Test User', mail: '', pass: 'testpass'),
          throwsA(isInstanceOf<FirebaseAuthException>()));
    });

    test('Sign In with Incorrect Credentials', () async {
      expect(
          () async => await auth.signin(mail: 'testuser@example.com', pass: ''),
          throwsA(isInstanceOf<FirebaseAuthException>()));
    });
  });
}
