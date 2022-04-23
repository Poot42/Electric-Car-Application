import 'package:flutter/material.dart';
import 'overview.dart';
import 'detail_obj.dart';
import 'search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electric Cars Finder',
      theme: ThemeData(
        primarySwatch: Colors.grey,
    ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Electric car finding");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){
              showSearch(context: context,
                delegate: MySearchDelegate(),
              );
            },
          ),
        ],
        title: cusSearchBar,
      ),
      body: Center(

        child: ListView.builder(

          itemCount: Cars.samples.length,

          itemBuilder: (BuildContext context, int index) {

            return GestureDetector(

              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {

                      return CarDetail(recipe: Cars.samples[index]);

                    },
                  ),
                );
              },
              child: buildRecipeCard(Cars.samples[index]),
            );


          },
        ),
      ),
    );
  }
  Widget buildRecipeCard(Cars recipe) {
    return Card(

      elevation: 2.0,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),

      child: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),

            const SizedBox(
              height: 14.0,
            ),

            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
