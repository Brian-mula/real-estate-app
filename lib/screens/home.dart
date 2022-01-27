import 'package:flutter/material.dart';
import 'package:realestate/models/cats.dart';
import 'package:realestate/screens/widgets/brokers.dart';
import 'package:realestate/screens/widgets/categories.dart';
import 'package:realestate/screens/widgets/house_list_view.dart';
import 'package:realestate/widgets/custom_app_bar.dart';
import 'package:realestate/widgets/user_greet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  var catategory = Category.generateCategory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(Icons.format_align_justify_outlined, Icons.search),
          UserGreet(),
          Categories(
            selected,
            (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            },
            catategory,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              "Brockers",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Brokers(),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text('Popular Houses',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          Expanded(
              child: HouseListView(selected, (int index) {
            setState(() {
              selected = index;
            });
          }, catategory, pageController)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
