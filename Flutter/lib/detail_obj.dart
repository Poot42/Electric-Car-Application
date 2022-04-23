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

          ],
        ),
      ),
    );
  }
}

