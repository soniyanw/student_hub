import 'package:flutter/material.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';

class NeedColleague extends StatefulWidget {
  const NeedColleague({Key? key}) : super(key: key);

  @override
  _NeedColleagueState createState() => _NeedColleagueState();
}

class _NeedColleagueState extends State<NeedColleague> {
  Services imp = new ServiceImp();
  bool p = true;
  bool p1 = true;

  var project = '';
  var skills = '';
  var newname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: purple,
          title: Text("New Collaboration"),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 24,
              ),
              TextFormField(
                onChanged: (newtext) {
                  project = newtext;
                },
                maxLines: 6,
                style: styling,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintStyle: styling,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color:
                            Colors.purple[900] ?? Colors.purple), //<-- SEE HERE
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color:
                            Colors.purple[900] ?? Colors.purple), //<-- SEE HERE
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 4,
                        color:
                            Colors.purple[900] ?? Colors.purple), //<-- SEE HERE
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Colors.purple[900] ?? Colors.purple),
                  ),
                  hintText: 'Enter Project Details',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (newtext) {
                  skills = newtext;
                },
                style: styling,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintStyle: styling,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color:
                            Colors.purple[900] ?? Colors.purple), //<-- SEE HERE
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color:
                            Colors.purple[900] ?? Colors.purple), //<-- SEE HERE
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 4,
                        color:
                            Colors.purple[900] ?? Colors.purple), //<-- SEE HERE
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Colors.purple[900] ?? Colors.purple),
                  ),
                  hintText: 'Enter skills expected',
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Container(
                width: double.infinity,
                height: 54.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[900]),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  onPressed: () {
                    if (project == '' || skills == '') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Fill all the fields properly"),
                        backgroundColor: purple,
                      ));
                    } else {
                      imp.postrequest(project, skills, false);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Request Posted Successfully"),
                        backgroundColor: purple,
                      ));
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    'Post',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
