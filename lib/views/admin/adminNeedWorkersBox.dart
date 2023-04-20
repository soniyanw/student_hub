import 'package:flutter/material.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:provider/provider.dart';

class AdminNeedWorkerBox extends StatefulWidget {
  final String project;
  final String name;
  final String skills;
  final String time;
  final String mail;
  final int people;
  final String id;
  final bool approved;
  AdminNeedWorkerBox(this.project, this.name, this.skills, this.time, this.mail,
      this.people, this.id, this.approved);

  @override
  State<AdminNeedWorkerBox> createState() => _AdminNeedWorkerBoxState();
}

class _AdminNeedWorkerBoxState extends State<AdminNeedWorkerBox> {
  late int people;
  @override
  void initState() {
    people = widget.people;
    super.initState();
  }

  Services imp = ServiceImp();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bgimage.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: purple,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.name +
                                    " needs ${widget.people} colleague(s)",
                                style: TextStyle(color: Colors.white),
                              ),
                              widget.approved ? Icon(Icons.star) : Container()
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                widget.time.split(' ')[0],
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                widget.time
                                    .substring(11, widget.time.length - 10),
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Project Details:",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.project,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Skills Needed:",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.skills,
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () async {
                        imp.approveNeedWorker(widget.id);
                        await context.read<MyModel>().getAdminNewWorkersPosts();

                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Approved Successfully",
                              style: styling,
                            ),
                          ),
                          backgroundColor: Colors.white,
                        ));
                      },
                      color: Colors.white,
                      child: Text(
                        "Approve",
                        style: styling,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
