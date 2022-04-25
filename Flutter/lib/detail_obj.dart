import 'package:flutter/material.dart';
import 'overview.dart';

class CarDetail extends StatefulWidget {
  final Cars recipe;

  const CarDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _CarDetailState createState() {
    return _CarDetailState();
  }
}

class _CarDetailState extends State<CarDetail> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),

      body: SafeArea(

        child: Column(
          children: <Widget>[

            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),

            const SizedBox(
              height: 4,
            ),

            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.specification.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.specification[index];
                  // 9
                  // TODO: Add ingredient.quantity
                  return Text(
                          '${ingredient.body}\n'
                          '${ingredient.price}\n '
                          '${ingredient.dealer}\n '
                          '${ingredient.range}\n'
                          '${ingredient.battery}\n'
                          '${ingredient.speed}\n',
                           style: const TextStyle(fontSize: 18));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


