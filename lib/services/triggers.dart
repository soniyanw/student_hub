import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

Future<void> sendFeedbackEmail(DocumentSnapshot snapshot) async {
  // Get the feedback data from the snapshot
  final data = snapshot.data() as Map<String, dynamic>;

  // Get the user's email address and feedback message
  final userEmail = data['email'] as String;
  final feedbackMessage = data['message'] as String;

  // Set up your email service (in this case, using Gmail)
  final smtpServer = gmail('your_username', 'your_password');

  // Define the email message
  final Message message = Message()
    ..from = Address('')
    ..recipients = [Address('your_email_address')]
    ..subject = 'New Feedback Received'
    ..text = 'Email: $userEmail\n\nMessage: $feedbackMessage';

  // Send the email
  final sendReport = await send(message, smtpServer);
  print('Email sent: ${sendReport.toString()}');
}

void main() {
  // Listen for new documents in the 'feedbacks' collection
  FirebaseFirestore.instance
      .collection('feedbacks')
      .snapshots()
      .listen((QuerySnapshot snapshot) {
    // Iterate over each new document and send an email
    snapshot.docChanges.forEach((DocumentChange change) {
      if (change.type == DocumentChangeType.added) {
        sendFeedbackEmail(change.doc);
      }
    });
  });
}
