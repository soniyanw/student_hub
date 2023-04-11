import 'package:flutter/material.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/views/queries/answer_list.dart';

class QueryBox extends StatefulWidget {
  final String query;
  final String username;
  final String id;
  final String link;
  final String time;
  QueryBox(this.query, this.username, this.id, this.link, this.time);

  @override
  State<QueryBox> createState() => _QueryBoxState();
}

class _QueryBoxState extends State<QueryBox> {
  Services imp = new ServiceImp();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: purple,
                  image: DecorationImage(
                    image: AssetImage("assets/bgimage.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              widget.username,
                              style: TextStyle(color: Colors.white),
                            ),
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
                            "Query:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.query,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextButton(
                            onPressed: () {
                              imp.launchURLtoWeb(widget.link.trim());
                            },
                            child: Text(
                              widget.link,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Text(
                            "(Tap on link to open attachment)",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Answers(
                                      queryid: widget.id,
                                    )));
                      },
                      color: Colors.white,
                      child: Text(
                        "Answers >",
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
