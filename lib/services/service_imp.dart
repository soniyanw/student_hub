import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_inc/models/answer.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/feedbacks.dart';
import 'package:project_inc/models/queries.dart';
import 'package:project_inc/services/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceImp implements Services {
  @override
  void resetPass({String? email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email ?? '');
  }

  void signin({String? mail, String? pass}) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail ?? '', password: pass ?? '');
  }

  @override
  void signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  void signup({String? name, String? mail, String? pass}) async {
    UserCredential userc;
    userc = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail ?? '', password: pass ?? '');
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userc.user!.uid)
        .set({"mail": mail, "name": name, "id": userc.user!.uid});
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail ?? '', password: pass ?? '');
  }

  void postfeedback(String? feedback) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds =
        await FirebaseFirestore.instance.collection('feedbacks').doc();
    Feedbacks newFeed = Feedbacks((b) => b
      ..feedback = feedback
      ..userid = data['id'].toString()
      ..name = data['name'].toString());
    feeds.set(newFeed.toJson());
  }

  Future<String> getcurrentuser_id() async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    return data['id'].toString();
  }

  Future<String> getcurrentuser_name() async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    return data['name'].toString();
  }

  Future<String> getcurrentuser_mail() async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    return data['mail'].toString();
  }

  void postrequest(String? project, String skills, bool offer) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds =
        await FirebaseFirestore.instance.collection('collaborations').doc();
    Collaborations newFeed = Collaborations((b) => b
      ..project = project
      ..user = data['name'].toString()
      ..usermail = data['mail'].toString()
      ..offer = offer
      ..time = Timestamp.now().toDate().toString()
      ..skills = skills);
    feeds.set(newFeed.toJson());
  }

  Future<BuiltList<Collaborations>> getcollaborations() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('collaborations')
            .orderBy('time', descending: true)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Collaborations> list = [];

    snapshot.forEach((element) {
      list.add(Collaborations.fromJson(element.data()));
    });
    print("collaborations");
    print(list);
    return list.toBuiltList();
  }

  void postquery(String query, String link) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds = await FirebaseFirestore.instance.collection('queries').doc();
    Queries newFeed = Queries((b) => b
      ..query = query
      ..user = data['name'].toString()
      ..userid = data['id'].toString()
      ..link = link
      ..time = Timestamp.now().toDate().toString()
      ..id = feeds.id.toString());
    feeds.set(newFeed.toJson());
  }

  Future<BuiltList<Queries>> getqueries() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('queries')
            .orderBy('time', descending: true)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Queries> list = [];

    snapshot.forEach((element) {
      list.add(Queries.fromJson(element.data()));
    });
    print("queries");
    print(list);
    return list.toBuiltList();
  }

  void postans(String queryid, String ans) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds = await FirebaseFirestore.instance.collection('answers').doc();
    Answer newFeed = Answer((b) => b
      ..queryid = queryid
      ..user = data['name'].toString()
      ..answer = ans);
    feeds.set(newFeed.toJson());
  }

  Future<BuiltList<Answer>> getanswers(String queryid) async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('answers')
            .where('queryid', isEqualTo: queryid)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Answer> list = [];
    snapshot.forEach((element) {
      list.add(Answer.fromJson(element.data()));
    });
    print("answers");
    print(list);
    return list.toBuiltList();
  }

  launchURLtoWeb(String urll) async {
    final url = urll;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
