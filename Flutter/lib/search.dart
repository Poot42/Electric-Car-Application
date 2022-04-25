import 'package:flutter/material.dart';
import 'overview.dart';
import 'detail_obj.dart';
import 'main.dart';
class MySearchDelegate extends SearchDelegate{

  List<String> Ecar = [
    "Mercedes EQS 450+",
    "Mercedes EQA 250",
    "Mercedes EQE 350+",
    "Mercedes EQV 300 Long",
    "Hyundai Ioniq 5",
    "Volvo XC40 Recharge Pure Electric",
    "Volvo C40 Recharge Pure Electric",
    "Mini Cooper SE",
    "BMW iX eDrive50",
    "BMW i4 eDrive40e M Sport",
    "BMW i4 M50",
    "BMW iX3 M Sport",
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
  Widget buildResults(BuildContext context) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/' + query + ' ' + '2.png'),
        Text(
            query,
            style: const TextStyle(
              fontSize: 20.0,
              fontFamily: 'Quicksand',
          ),
        ),
      ],
    )
  );

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
