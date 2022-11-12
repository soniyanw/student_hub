import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/feedbacks.dart';
import 'package:project_inc/services/services.dart';

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
      ..offer = offer
      ..skills = skills);
    feeds.set(newFeed.toJson());
  }

  Future<BuiltList<Collaborations>> getcollaborations() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance.collection('collaborations').get();
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
}
