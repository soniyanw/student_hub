import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/models/collaborationProjects.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/views/collaboration/needProjectBox.dart';
import 'package:provider/provider.dart';

import '../../services/services.dart';
import '../../view_model/changes.dart';

class WorkerCustomDelegate extends SearchDelegate {
  WorkerCustomDelegate();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  Services imp = ServiceImp();

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    BuiltList<CollaborationProjects> queries =
        context.read<MyModel>().state.needProjects;
    final results = queries.where((book) =>
        book.project!.toLowerCase().contains(query.toLowerCase()) ||
        book.skills!.toLowerCase().contains(query.toLowerCase()));
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: results.length,
      itemBuilder: (BuildContext context, int index) {
        final book = results.elementAt(index);
        return Padding(
          padding: EdgeInsets.all(8),
          child: SizedBox(
            child: NeedProjectBox(book.project!, book.user!, book.skills!,
                book.time!, book.usermail!, book.approved!),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}
