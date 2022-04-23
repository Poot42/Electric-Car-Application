import 'package:flutter/material.dart';
import 'overview.dart';
import 'detail_obj.dart';

class MySearchDelegate extends SearchDelegate{

  List<String> Ecar = [
    "Tesla Model 3",
    "Tesla Model Y",
    "Tesla Moel S",
    "BMW i4 eDrive40",
    "Mercedes EQS 450+",
    "Hyundai IONIQ Electric",
  ];


  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: (){
        if(query.isEmpty){
          close(context, null);
        }else{
          query = '';}
      },
    )
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
  );

  @override
  Widget buildResults(BuildContext context) {
    // show result based on the input
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<String> Ecars = Ecar.where((searchResult){
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: Ecars.length,
      itemBuilder: (context, index) {
        final suggestion = Ecars[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            //showResults(context);
          },
        );
      },
    );
  }

}