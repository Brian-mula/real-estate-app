import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class Brokers extends StatelessWidget {
  const Brokers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgs = [
      'https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104__340.jpg',
      'https://cdn.pixabay.com/photo/2017/06/02/14/11/girl-2366438__340.jpg',
      'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg',
      'https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664__340.jpg',
      'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100__340.jpg',
      'https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761__340.jpg'
    ];
    return Container(
      height: 100,
      width: 300,
      color: Colors.black,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Top Brokers in Kenya",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageStack(
                  imageRadius: 35,
                  imageCount: 4,
                  imageBorderWidth: 4,
                  imageList: imgs,
                  totalCount: imgs.length),
            ],
          ),
        ],
      ),
    );
  }
}
