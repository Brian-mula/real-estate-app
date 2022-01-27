import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:realestate/models/houses.dart';

class DetailsPage extends StatelessWidget {
  final Houses house;
  DetailsPage(this.house);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange.shade50,
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios_outlined)),
                Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: sized_box_for_whitespace
                        const Text("12345"),
                        Container(
                            height: 290,
                            width: 290,
                            child: Image.network(
                              house.imgUrl,
                              fit: BoxFit.fitHeight,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          house.name,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black54,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            detailsBuilder(Icons.location_pin, house.location),
                            detailsBuilder(
                                Icons.aspect_ratio_outlined, house.area),
                            detailsBuilder(
                                Icons.star_border_outlined, "${house.score}")
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          house.desc,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                              letterSpacing: 1,
                              wordSpacing: 2),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "For Details",
                          style: TextStyle(fontSize: 17, color: Colors.black54),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[200],
                            child: Image.network(
                              house.imgOwner,
                              height: 29,
                              width: 29,
                            ),
                          ),
                          title: Text(
                            house.owner,
                            style: const TextStyle(
                                fontSize: 17, color: Colors.black54),
                          ),
                          subtitle: const Text(
                            "Owner",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black38),
                          ),
                          trailing: IconButton(
                              onPressed: () async {
                                FlutterPhoneDirectCaller.callNumber(
                                    house.phone);
                              },
                              icon: const CircleAvatar(
                                  backgroundColor: Colors.black87,
                                  child: Icon(
                                    Icons.call,
                                  ))),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Book now',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        )
                      ],
                    ))
              ],
            )));
  }

  Row detailsBuilder(IconData icon, String title) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black38,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.black38),
        )
      ],
    );
  }
}
