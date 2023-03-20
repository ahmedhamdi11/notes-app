import 'package:flutter/material.dart';
import 'package:my_notes/components/search_results_body.dart';

class SearchDelegateView extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return SearchResultsBody(query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SearchResultsBody(
      query: query,
    );
  }
}


