import 'package:flutter/material.dart';

class Currency_tile {
  
  late String currency;

  Currency_tile(String currency) {
    
    this.currency = currency;
  }

  Column addTile() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            debugPrint('Kliknieto!');
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Text(currency)
      ],
    );
  }
  static makeTilesGrid(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 65.0, left: 65),
          child: Row(
            children: [
              Currency_tile("Pln").addTile(),
              Spacer(),
              Currency_tile("Pln").addTile(),
              Spacer(),
              Currency_tile("Pln").addTile(),
              Spacer(),
              Currency_tile("Pln").addTile()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 65.0, left: 65),
          child: Row(
            children: [
              Currency_tile("Pln").addTile(),
              Spacer(),
              Currency_tile("Pln").addTile(),
              Spacer(),
              Currency_tile("Pln").addTile(),
              Spacer(),
              Currency_tile("Pln").addTile()
            ],
          ),
        )
      ],
    );
  }

}
