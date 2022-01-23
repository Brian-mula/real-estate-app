import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;

  // ignore: use_key_in_widget_constructors
  const CustomAppBar(this.leftIcon, this.rightIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buidIcon(leftIcon), buidIcon(rightIcon)],
      ),
    );
  }

  Container buidIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),
    );
  }
}
