import 'package:flutter/material.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';

class MyNeedWorkerBox extends StatefulWidget {
  final String project;
  final String name;
  final String skills;
  final String time;
  final String mail;
  final int people;
  final String id;
  MyNeedWorkerBox(this.project, this.name, this.skills, this.time, this.mail,
      this.people, this.id);

  @override
  State<MyNeedWorkerBox> createState() => _MyNeedWorkerBoxState();
}

class _MyNeedWorkerBoxState extends State<MyNeedWorkerBox> {
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
                          Text(
                            widget.name +
                                " needs ${widget.people} colleague(s)",
                            style: TextStyle(color: Colors.white),
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Edit No of workers:",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 18.0,
                            ),
                            Container(
                              color: Colors.white,
                              child: DropdownButton<int>(
                                value: people,
                                items: [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text('1'),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text('2'),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text('3'),
                                  ),
                                  DropdownMenuItem(
                                    value: 4,
                                    child: Text('4'),
                                  ),
                                  DropdownMenuItem(
                                    value: 5,
                                    child: Text('5'),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    people = value?.toInt() ?? 1;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () async {
                        imp.update(widget.id, people);
                        Navigator.pop(context);
                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Edited Successfully",
                              style: styling,
                            ),
                          ),
                          backgroundColor: Colors.white,
                        ));
                      },
                      color: Colors.white,
                      child: Text(
                        "Confirm Edit",
                        style: styling,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () async {
                        imp.delNeedWorkerPost(widget.id);
                        Navigator.pop(context);

                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Deleted Successfully",
                              style: styling,
                            ),
                          ),
                          backgroundColor: Colors.white,
                        ));
                      },
                      color: Colors.white,
                      child: Text(
                        "Delete",
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
