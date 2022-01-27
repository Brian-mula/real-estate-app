import 'package:flutter/material.dart';
import 'package:realestate/models/houses.dart';

class ImagePrice extends StatelessWidget {
  // final Houses houses;
  // ImagePrice(this.houses);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topRight,
          color: Colors.orange[900],
        ),
        Container(
          color: Colors.black,
        )
      ],
    );
  }
}
