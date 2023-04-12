import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:provider/provider.dart';

class Answers extends StatefulWidget {
  final queryid;
  const Answers({Key? key, this.queryid}) : super(key: key);

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  Future<void> method() async {
    await context.read<MyModel>().get_ans_list(widget.queryid);
    setState(() {});
  }

  @override
  void initState() {
    method();
    setState(() {});
    // TODO: implement initState
    super.initState();
  }

  TextEditingController controll = TextEditingController();
  Services imp = new ServiceImp();
  void _refresh() {
    setState(() {});
    return null;
  }

  @override
  Widget build(BuildContext context) {
    BuiltList? list = context.read<MyModel>().state.answers;
    return RefreshIndicator(
      color: purple,
      onRefresh: () {
        _refresh();
        return Future(() => null);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Answers"),
          backgroundColor: purple,
        ),
        body: (list == null || list.isEmpty)
            ? Column(
                children: [
                  Expanded(child: Center(child: Text("No answers yet"))),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: TextField(
                              maxLines: 2,
                              style: TextStyle(color: purple),
                              controller: controll,
                              onChanged: (val) {
                                print(controll.value);
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
                                labelText: "Your Answer...",
                                labelStyle: styling,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color:
                                          Colors.purple[900] ?? Colors.purple),
                                ),
                              ),
                            ),
                          ),
                        ),
                        !loading
                            ? IconButton(
                                onPressed: controll.value == ''
                                    ? () {
                                        print("nothing");
                                      }
                                    : () async {
                                        FocusScope.of(context).unfocus();
                                        setState(() {
                                          loading = true;
                                        });
                                        await imp.postans(
                                            widget.queryid,
                                            context
                                                .read<MyModel>()
                                                .state
                                                .descrip
                                                .toString());
                                        controll.clear();
                                        await context
                                            .read<MyModel>()
                                            .get_ans_list(widget.queryid);
                                        setState(() {
                                          loading = false;
                                        });
                                        Navigator.pop(context);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text("Answer posted"),
                                          backgroundColor: purple,
                                        ));
                                        setState(() {});
                                      },
                                icon: Icon(
                                  Icons.send,
                                  color: purple,
                                ))
                            : Center(
                                child: CircularProgressIndicator(
                                  color: purple,
                                ),
                              )
                      ],
                    ),
                  )
                ],
              )
            : Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/bgimage.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      list[index].user + ':',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      list[index].answer,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: TextField(
                              maxLines: 2,
                              style: TextStyle(color: purple),
                              controller: controll,
                              onChanged: (val) {
                                print(controll.value);
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
                                labelText: "Your Answer...",
                                labelStyle: styling,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color:
                                          Colors.purple[900] ?? Colors.purple),
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: controll.value == ''
                                ? () {
                                    print("nothing");
                                  }
                                : () {
                                    FocusScope.of(context).unfocus();
                                    imp.postans(
                                        widget.queryid,
                                        context
                                            .read<MyModel>()
                                            .state
                                            .descrip
                                            .toString());
                                    controll.clear();
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("Answer posted"),
                                      backgroundColor: purple,
                                    ));
                                    setState(() {});
                                  },
                            icon: Icon(
                              Icons.send,
                              color: purple,
                            ))
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
