import 'package:flutter/material.dart';
import 'package:realestate/models/cats.dart';

// ignore: use_key_in_widget_constructors
class Categories extends StatelessWidget {
  final int selected;
  final Function callBack;
  final Category category;
  // ignore: use_key_in_widget_constructors
  Categories(this.selected, this.callBack, this.category);

  @override
  Widget build(BuildContext context) {
    final cats = category.menu.keys.toList();
    return Container(
      height: 150,
      padding: const EdgeInsets.all(25),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callBack(index),
                child: Card(
                  color: selected == index
                      ? Colors.deepOrange.shade400
                      : Colors.white,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.living_outlined,
                          size: 30,
                        ),
                        Text(
                          cats[index],
                          style: const TextStyle(
                              fontSize: 10, color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: cats.length),
    );
  }
}
