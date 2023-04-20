import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/views/collaboration/needWorkerBox.dart';
import 'package:provider/provider.dart';

import '../../services/services.dart';
import '../../view_model/changes.dart';

class ProjectCustomDelegate extends SearchDelegate {
  ProjectCustomDelegate();

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
    BuiltList<Collaborations> queries =
        context.read<MyModel>().state.needworkers ?? BuiltList();
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
            child: NeedWorkerBox(book.project!, book.user!, book.skills!,
                book.time!, book.usermail!, book.people!, book.approved!),
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
