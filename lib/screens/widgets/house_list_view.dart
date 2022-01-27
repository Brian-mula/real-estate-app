import 'package:flutter/material.dart';
import 'package:realestate/models/cats.dart';
import 'package:realestate/models/houses.dart';
import 'package:realestate/screens/details.dart';
import 'package:realestate/screens/widgets/categories.dart';
import 'package:realestate/screens/widgets/house_list_item.dart';

class HouseListView extends StatelessWidget {
  final int selected;
  final Function callBack;
  final Category category;
  final PageController pageController;

  HouseListView(
      this.selected, this.callBack, this.category, this.pageController);

  @override
  Widget build(BuildContext context) {
    final categories = category.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: categories
            .map((e) => ListView.separated(
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(category
                                  .menu[categories[selected]]![index])));
                    },
                    child:
                        HouseItem(category.menu[categories[selected]]![index])),
                separatorBuilder: (_, index) => const SizedBox(
                      height: 20,
                    ),
                itemCount: category.menu[categories[selected]]!.length))
            .toList(),
      ),
    );
  }
}
