import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_inc/models/answer.dart';
import 'package:project_inc/models/collaborationProjects.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/feedbacks.dart';
import 'package:project_inc/models/queries.dart';
import 'package:project_inc/services/services.dart';
import 'package:url_launcher/url_launcher.dart';

bool loading = false;

class ServiceImp implements Services {
  @override
  Future<void> resetPass({String? email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email ?? '');
  }

  Future<void> signin({String? mail, String? pass}) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail ?? '', password: pass ?? '');
  }

  @override
  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> signup({String? name, String? mail, String? pass}) async {
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

  Future<void> postfeedback(String? feedback) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds =
        await FirebaseFirestore.instance.collection('feedbacks').doc();
    Feedbacks newFeed = Feedbacks((b) => b
      ..feedback = feedback
      ..mail = data['mail']
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

  Future<void> needWorker(String? project, String skills, int people) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds =
        await FirebaseFirestore.instance.collection('needWorkers').doc();
    Collaborations newFeed = Collaborations((b) => b
      ..project = project
      ..user = data['name'].toString()
      ..usermail = data['mail'].toString()
      ..approved = false
      ..userid = data['id'].toString()
      ..time = Timestamp.now().toDate().toString()
      ..id = feeds.id.toString()
      ..people = people
      ..skills = skills);
    feeds.set(newFeed.toJson());
  }

  Future<void> needProject(String? project, String skills) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds =
        await FirebaseFirestore.instance.collection('needProjects').doc();
    CollaborationProjects newFeed = CollaborationProjects((b) => b
      ..project = project
      ..user = data['name'].toString()
      ..usermail = data['mail'].toString()
      ..approved = false
      ..userid = data['id'].toString()
      ..time = Timestamp.now().toDate().toString()
      ..id = feeds.id.toString()
      ..skills = skills);
    feeds.set(newFeed.toJson());
  }

  Future<BuiltList<CollaborationProjects>> getNeedProjectPosts() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('needProjects')
            .orderBy('approved', descending: true)
            .orderBy('time', descending: true)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<CollaborationProjects> list = [];

    snapshot.forEach((element) {
      list.add(CollaborationProjects.fromJson(element.data()));
    });
    print("collaborations");
    print(list);
    return list.toBuiltList();
  }

  Future<BuiltList<Collaborations>> getNeedWorkersPosts() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('needWorkers')
            .orderBy('approved', descending: true)
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

  Future<void> delNeedProjPost(String collabid) async {
    await FirebaseFirestore.instance
        .collection('needProjects')
        .doc(collabid)
        .delete();
  }

  Future<void> delNeedWorkerPost(String collabid) async {
    await FirebaseFirestore.instance
        .collection('needWorkers')
        .doc(collabid)
        .delete();
  }

  Future<void> update(String collabid, int people) async {
    await FirebaseFirestore.instance
        .collection('needWorkers')
        .doc(collabid)
        .update({"people": people});
  }

  Future<void> approveNeedProject(String collabid) async {
    await FirebaseFirestore.instance
        .collection('needProjects')
        .doc(collabid)
        .update({"approved": true});
  }

  Future<void> approveNeedWorker(String collabid) async {
    await FirebaseFirestore.instance
        .collection('needWorkers')
        .doc(collabid)
        .update({"approved": true});
  }

  Future<BuiltList<CollaborationProjects>> getMyNewProjectsPosts() async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('needProjects')
            .where('userid', isEqualTo: data['id'].toString())
            .orderBy('approved', descending: true)
            .orderBy('time', descending: true)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<CollaborationProjects> list = [];

    snapshot.forEach((element) {
      list.add(CollaborationProjects.fromJson(element.data()));
    });
    print("collaborations");
    print(list);
    return list.toBuiltList();
  }

  Future<BuiltList<Collaborations>> getMyNewWorkersPosts() async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('needWorkers')
            .where('userid', isEqualTo: data['id'].toString())
            .orderBy('approved', descending: true)
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

  Future<BuiltList<Collaborations>> getAdminNewWorkersPosts() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('needWorkers')
            .where('approved', isEqualTo: false)
            .orderBy('time', descending: false)
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

  Future<BuiltList<CollaborationProjects>> getAdminNewProjectsPosts() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('needProjects')
            .where('approved', isEqualTo: false)
            .orderBy('time', descending: false)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<CollaborationProjects> list = [];
    snapshot.forEach((element) {
      list.add(CollaborationProjects.fromJson(element.data()));
    });
    print("collaborations");
    print(list);
    return list.toBuiltList();
  }

  Future<BuiltList<Queries>> getMyQueries() async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('queries')
            .where('userid', isEqualTo: data['id'].toString())
            .orderBy('time', descending: true)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Queries> list = [];

    snapshot.forEach((element) {
      list.add(Queries.fromJson(element.data()));
    });
    print("collaborations");
    print(list);
    return list.toBuiltList();
  }

  Future<void> postquery(String query, String link) async {
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

  Future<void> postans(String queryid, String ans) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final feeds = await FirebaseFirestore.instance.collection('answers').doc();
    Answer newFeed = Answer((b) => b
      ..queryid = queryid
      ..user = data['name'].toString()
      ..userid = data['id'].toString()
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

  Future<BuiltList<Feedbacks>> getFeedbacks() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance.collection('feedbacks').get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Feedbacks> list = [];
    snapshot.forEach((element) {
      list.add(Feedbacks.fromJson(element.data()));
    });
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
