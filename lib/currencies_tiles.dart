import 'package:currency_calculator/pages.dart/home_page.dart';
import 'package:flutter/material.dart';

class Currency_tile {
  late String currency;
  late double exchangeRate;
  late Color borderColors = Colors.black;
  late bool showBorder=false;

  Currency_tile(String currency, double exchangeRate) {
    this.currency = currency;
    this.exchangeRate = exchangeRate;
  }

  Column addTile() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Globals.exchangeRate = exchangeRate;
            debugPrint('Kliknieto!');

            if(!Globals.isFirstCurrSelected){
              Globals.isFirstCurrSelected=true;
              showBorder=true;
              borderColors=Colors.green;
            }
            if(Globals.isFirstCurrSelected && !Globals.isSecondCurrSelected){
              Globals.isSecondCurrSelected=true;
              showBorder=true;
              borderColors=Colors.deepPurple;
            }
            
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(color:  borderColors, width: 4),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Text(currency)
      ],
    );
  }

  static makeTilesGrid() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 65.0, left: 65),
          child: Row(
            children: [
              Currency_tile("PLN", 3.4).addTile(),
              Spacer(),
              Currency_tile("USD", 5.0).addTile(),
              Spacer(),
              Currency_tile("EUR", 4.0).addTile(),
              Spacer(),
              Currency_tile("PLN", 3.4).addTile()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 65.0, left: 65),
          child: Row(
            children: [
              Currency_tile("PLN", 3.4).addTile(),
              Spacer(),
              Currency_tile("USD", 5.0).addTile(),
              Spacer(),
              Currency_tile("EUR", 4.0).addTile(),
              Spacer(),
              Currency_tile("PLN", 3.4).addTile()
            ],
          ),
        )
      ],
    );
  }
}
