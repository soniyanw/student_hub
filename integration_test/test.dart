// // import 'package:flutter/material.dart';
// // import 'package:flutter_test/flutter_test.dart';
// // import 'package:integration_test/integration_test.dart';
// // import 'package:project_inc/main.dart' as app;
// //
// // void main() {
// //   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
// //
// //   group('end-to-end test', () {
// //     testWidgets('integration test', (tester) async {
// //       app.main();
// //       await tester.pumpAndSettle();
// //       final findtechnical = find.byKey(const Key('student'));
// //       expect(findtechnical, findsOneWidget);
// //       await tester.pumpAndSettle(const Duration(seconds: 2));
// //     });
// //   });
// // }
// // import 'package:flutter_test/flutter_test.dart';
// // import 'package:integration_test/integration_test.dart';
// // import 'package:project_inc/main.dart' as app;
// //
// // void main() {
// //   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
// //
// //   group('end-to-end test', () {
// //     testWidgets('tap on the floating action button, verify counter',
// //         (tester) async {
// //       app.main();
// //       await tester.pumpAndSettle();
// //
// //       // Verify the counter starts at 0.
// //       expect(find.text('Student-Hub'), findsOneWidget);
// //
// //       await tester.pumpAndSettle();
// //
// //       // Verify the counter increments by 1.
// //       expect(find.text('Student-Hub'), findsOneWidget);
// //     });
// //   });
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:project_inc/views/auth/login_page.dart';
//
// void main() {
//   testWidgets('Test App Integration Flow', (WidgetTester tester) async {
//     // Build the app and trigger a frame.
//     await tester.pumpWidget(Login());
//
//     // Find the Text Widget with 'Student-Hub' text
//     expect(find.text('Student-Hub'), findsOneWidget);
//
//     // Find and type into the email TextField
//     final emailField = find.byType(TextField).first;
//     await tester.enterText(emailField, 'sonu');
//
//     // Find and click the elevated button
//     final signInButton = find.byType(ElevatedButton).first;
//     await tester.tap(signInButton);
//     await tester.pumpAndSettle();
//
//     // Find the Text Widget with 'Student-Hub' text again
//     expect(find.text('Student-Hub'), findsOneWidget);
//
//     // Find and enter the email and password in their respective fields
//     final emailFormField = find.byKey(ValueKey('email')).first;
//     await tester.enterText(emailFormField, 'sonu@gmail.com');
//     final passwordFormField = find.byKey(ValueKey('password')).first;
//     await tester.enterText(passwordFormField, '66666666');
//
//     // Find and click the elevated button
//     final signInButton2 = find.byType(ElevatedButton).last;
//     await tester.tap(signInButton2);
//     await tester.pumpAndSettle();
//
//     // Find the Text Widget with 'Queries' text
//     expect(find.text('Queries'), findsOneWidget);
//
//     // Find and click the menu button
//     final menuButton = find.byIcon(Icons.menu).first;
//     await tester.tap(menuButton);
//     await tester.pumpAndSettle();
//
//     // Find and click the logout option
//     final logoutOption = find.text('Logout');
//     await tester.tap(logoutOption);
//     await tester.pumpAndSettle();
//
//     // Find and click the 'Register Now' text button
//     final registerButton = find.text('Register Now');
//     await tester.tap(registerButton);
//     await tester.pumpAndSettle();
//
//     // Find and enter data into the registration form fields
//     final emailField2 = find.byKey(ValueKey('reg_email')).first;
//     await tester.enterText(emailField2, 'test@example.com');
//     final nameField = find.byKey(ValueKey('reg_name')).first;
//     await tester.enterText(nameField, 'Test User');
//     final passwordField = find.byKey(ValueKey('reg_password')).first;
//     await tester.enterText(passwordField, 'password');
//     final confirmPasswordField =
//         find.byKey(ValueKey('reg_confirm_password')).first;
//     await tester.enterText(confirmPasswordField, 'differentpassword');
//
//     // Find and click the elevated button
//     final registerButton2 = find.byType(ElevatedButton).last;
//     await tester.tap(registerButton2);
//     await tester.pumpAndSettle();
//
//     // Find and match the error messages on password fields
//     final passwordErrorText = find.text('Passwords do not match');
//     expect(passwordErrorText, findsOneWidget);
//
//     // Find and click the elevated button again
//     final registerButton3 = find.byType(ElevatedButton).last;
//     await tester.tap(registerButton3);
//     await tester.pumpAndSettle();
//
//     // Find the Text Widget with 'Queries' text again
//     expect(find.text('Queries'), findsOneWidget);
//   });
// }
