import 'package:currency_calculator/currencies_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class Globals {
  static double initialValue = 0;
  static double calculatedValue = 0;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text("Choose your currency to calculate:"),
            ),
            Container(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter your value",
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Currency_tile.makeTilesGrid(),
            Text('${Globals.calculatedValue}')
          ],
        ),
      ),
    );
  }
}
