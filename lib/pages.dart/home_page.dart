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
  static double exchangeRate =3.4;

  static bool isFirstCurrSelected=false;
  static bool isSecondCurrSelected=false;

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
            Text(Globals.isFirstCurrSelected? "SELECT FIRST CURR" : "SELECT CURR TO EXCHANGE"),
            Container(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    Globals.initialValue=double.parse(value);                     
                  });
                },
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
            ElevatedButton(onPressed: (){
                setState(() {
                  Globals.calculatedValue=Globals.initialValue*Globals.exchangeRate;
                });
            }, child: Text("Calculate")),
            Text('${Globals.calculatedValue}')
          ],
        ),
      ),
    );
  }
}
