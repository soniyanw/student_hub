import 'package:flutter/material.dart';
import 'package:project_inc/services/services.dart';
import 'package:url_launcher/url_launcher.dart';

class NeedProjectBox extends StatefulWidget {
  final String project;
  final String name;
  final String skills;
  final String time;
  final String mail;
  NeedProjectBox(this.project, this.name, this.skills, this.time, this.mail);

  @override
  State<NeedProjectBox> createState() => _NeedProjectBoxState();
}

class _NeedProjectBoxState extends State<NeedProjectBox> {
  @override
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
                            widget.name + " needs a project",
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
                            "Previous Projects:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
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
                            "Skills Possessed:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
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
                        String email = Uri.encodeComponent(widget.mail);
                        String subject = Uri.encodeComponent(
                            "Interest regarding the post in Student-Hub");
                        String body = Uri.encodeComponent(
                            "We are in need of your specified skills\n\n${widget.skills}\nYour response here...");
                        Uri mail1 = Uri.parse(
                            "mailto:$email?subject=$subject&body=$body");
                        if (await launchUrl(mail1)) {
                          //email app opened
                        } else {
                          //email app is not opened
                        }
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Interest Sent",
                              style: styling,
                            ),
                          ),
                          backgroundColor: Colors.white,
                        ));
                      },
                      color: Colors.white,
                      child: Text(
                        "Show Interest",
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
