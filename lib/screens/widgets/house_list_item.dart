import 'package:flutter/material.dart';
import 'package:realestate/models/houses.dart';

class HouseItem extends StatelessWidget {
  final Houses houses;

  HouseItem(this.houses);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            height: 250,
            width: 250,
            child: Image.network(
              houses.imgUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  houses.name,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Ksh.',
                      style: TextStyle(color: Colors.brown[900]),
                    ),
                    Text('${houses.price}')
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.location_pin),
                  Text(houses.location)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [const Icon(Icons.api_outlined), Text(houses.area)],
              )
            ],
          )
        ],
      ),
    );
  }
}
