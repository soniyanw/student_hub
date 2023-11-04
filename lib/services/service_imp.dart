import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_inc/models/certificates.dart';
import 'package:project_inc/models/employee.dart';
import 'package:project_inc/models/hr.dart';
import 'package:project_inc/models/identity_docs.dart';
import 'package:project_inc/models/tax_docs.dart';
import 'package:project_inc/services/services.dart';

bool loading = false;
String empid = '';
String hrid = '';

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
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail ?? '', password: pass ?? '');

    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail ?? '', password: pass ?? '');
  }

  Future<void> editEmp(
      String mail,
      String phoneno,
      String street,
      String doorno,
      String city,
      String state,
      int pincode,
      String gender,
      String qualification,
      double percent,
      String fathername,
      String mothername,
      DateTime dob,
      String adhar,
      String emergency) async {
    await FirebaseFirestore.instance.collection('employees').doc(empid).update({
      "mail": mail,
      "phoneno": phoneno,
      "street": street,
      "doorno": doorno,
      "city": city,
      "state": state,
      "pincode": pincode,
      "gender": gender,
      "qualification": qualification,
      "percent": percent,
      "fathername": fathername,
      "mothername": mothername,
      "dob": dob,
      "adhar": adhar,
      "emergency": emergency
    });
  }

  Future<Employee> getEmpDetails(String id) async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('employees')
            .where('id', isEqualTo: id.toString())
            .get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Employee> list = [];
    snapshot.forEach((element) {
      list.add(Employee.fromJson(element.data()));
    });
    return list.toBuiltList()[0];
  }

  Future<String> addHR(
      String id, String phoneno, String name, String hrid) async {
    final feeds = await FirebaseFirestore.instance.collection('hrs').doc();
    Hr newFeed = Hr((b) => b
      ..id = feeds.id
      ..password = name.substring(0, 4) + phoneno.substring(4, 8)
      ..name = name
      ..phoneno = phoneno);
    feeds.set(newFeed.toJson());
    return feeds.id;
  }

  Future<String> addEmp(String id, String phoneno, String name) async {
    final feeds =
        await FirebaseFirestore.instance.collection('employees').doc();
    Employee newFeed = Employee((b) => b
      ..id = feeds.id
      ..password = name.substring(0, 4) + phoneno.substring(4, 8)
      ..name = name
      ..phoneno = phoneno
      ..mail = "--"
      ..address.state = "--"
      ..address.street = "--"
      ..address.doorno = "--"
      ..address.city = "--"
      ..address.pincode = 00
      ..gender = "--"
      ..education.qualification = "--"
      ..education.percent = 0.0
      ..fathername = "--"
      ..mothername = "--"
      ..dob = DateTime.now()
      ..adhar = "--"
      ..contacts.phoneno = "--"
      ..contacts.name = "--"
      ..contacts.relation = "--"
      ..hrid = hrid);
    feeds.set(newFeed.toJson());
    return feeds.id;
  }

  Future<Hr> getHrDetails(String id) async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('hrs')
            .where('id', isEqualTo: id.toString())
            .get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Hr> list = [];
    snapshot.forEach((element) {
      list.add(Hr.fromJson(element.data()));
    });
    return list.toBuiltList()[0];
  }

  Future<bool> checkEmp(String id, String pass) async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('employees')
            .where('id', isEqualTo: id.toString())
            .where('password', isEqualTo: pass)
            .get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Hr> list = [];
    snapshot.forEach((element) {
      list.add(Hr.fromJson(element.data()));
    });
    if (list.isEmpty) {
      return false;
    } else {
      empid = id;
      return true;
    }
  }

  Future<bool> checkHr(String id, String pass) async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('hrs')
            .where('id', isEqualTo: id.toString())
            .where('password', isEqualTo: pass)
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Hr> list = [];
    snapshot.forEach((element) {
      list.add(Hr.fromJson(element.data()));
    });
    if (list.isEmpty) {
      return false;
    } else {
      hrid = id;

      return true;
    }
  }

  Future<BuiltList<Employee>> getEmpList() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance
            .collection('employees')
            .where('hrid', isEqualTo: hrid.toString())
            .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Employee> list = [];
    snapshot.forEach((element) {
      list.add(Employee.fromJson(element.data()));
    });
    return list.toBuiltList();
  }

  Future<BuiltList<Employee>> getTotalEmpList() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance.collection('employees').get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Employee> list = [];
    snapshot.forEach((element) {
      list.add(Employee.fromJson(element.data()));
    });
    return list.toBuiltList();
  }

  Future<BuiltList<Hr>> getHrs() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await FirebaseFirestore.instance.collection('hr').get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Hr> list = [];
    snapshot.forEach((element) {
      list.add(Hr.fromJson(element.data()));
    });
    return list.toBuiltList();
  }

  Future<void> changeEmpPass(String password) async {
    await FirebaseFirestore.instance
        .collection('employees')
        .doc(empid)
        .update({"password": password});
  }

  Future<void> changeHrPass(String password) async {
    await FirebaseFirestore.instance
        .collection('hrs')
        .doc(hrid)
        .update({"password": password});
  }

  Future<void> addPersonalDoc(String link) async {
    final feeds = await FirebaseFirestore.instance.collection('pdocs').doc();
    IdentityDocs newFeed = IdentityDocs((b) => b
      ..empid = empid
      ..doc = link);
    feeds.set(newFeed.toJson());
  }

  Future<void> addPdocs(String link) async {
    final feeds = await FirebaseFirestore.instance.collection('pdocs').doc();
    IdentityDocs newFeed = IdentityDocs((b) => b
      ..empid = empid
      ..doc = link);
    feeds.set(newFeed.toJson());
  }

  Future<void> addTax(String link) async {
    final feeds = await FirebaseFirestore.instance.collection('tax').doc();
    TaxDocs newFeed = TaxDocs((b) => b
      ..userid = empid
      ..doc = link);
    feeds.set(newFeed.toJson());
  }

  Future<void> addcertificates(String link) async {
    final feeds =
        await FirebaseFirestore.instance.collection('certificates').doc();
    Certificates newFeed = Certificates((b) => b
      ..userid = empid
      ..doc = link);
    feeds.set(newFeed.toJson());
  }
}
