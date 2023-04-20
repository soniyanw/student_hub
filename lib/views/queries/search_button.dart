import 'package:flutter/material.dart';
import 'package:project_inc/views/queries/search.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showSearch(
          context: context,
          delegate: QueryCustomDelegate(),
        );
      },
      child: Container(
        width: 50,
        height: 50,
        child: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}
