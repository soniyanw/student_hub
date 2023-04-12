import 'package:flutter/material.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:provider/provider.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  TextEditingController controll = TextEditingController();
  Services imp = new ServiceImp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: purple,
        title: Text("Feedback"),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Center(
          child: Card(
            elevation: 0,
            child: Form(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        maxLines: 10,
                        style: TextStyle(color: purple),
                        controller: controll,
                        onChanged: (val) {
                          context.read<MyModel>().assignDescrip(val);
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.purple[900] ??
                                    Colors.purple), //<-- SEE HERE
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.purple[900] ??
                                    Colors.purple), //<-- SEE HERE
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 4,
                                color: Colors.purple[900] ??
                                    Colors.purple), //<-- SEE HERE
                          ),
                          labelText: "Type in your Feedback Here...",
                          labelStyle: styling,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.purple[900] ?? Colors.purple),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                          onPressed: controll.value == ''
                              ? () {
                                  print("nothing");
                                }
                              : () {
                                  FocusScope.of(context).unfocus();
                                  imp.postfeedback(
                                      context.read<MyModel>().state.descrip);
                                  controll.clear();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Feedback sent"),
                                    backgroundColor: purple,
                                  ));
                                  Navigator.of(context).pop();
                                  setState(() {});
                                },
                          color: purple,
                          child: Text(
                            "Post",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
