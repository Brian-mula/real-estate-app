import 'package:flutter/material.dart';
import 'package:realestate/models/users.dart';

// ignore: use_key_in_widget_constructors
class UserGreet extends StatelessWidget {
  final user = Users.generateUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 45),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Hi ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Text(
            'Find your home',
            style: TextStyle(fontSize: 14, color: Colors.black38),
          )
        ],
      ),
    );
  }
}
