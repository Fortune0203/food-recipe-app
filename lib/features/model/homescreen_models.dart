// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Dishes extends StatelessWidget {
  String name;
  String time;
  String image;
  Dishes({
    super.key,
    required this.name,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: 180,
        height: 250,
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0.h,
            ),
            Center(
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 20.0.h,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Time",
                style: TextStyle(fontSize: 16.0.h, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                        fontSize: 18.0.h, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.bookmark_outline_outlined),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
      Positioned(
        top: -80,
        left: 0,
        right: 0,
        child: SizedBox(width: 150.0.w, child: Image.asset(image)),
      ),
    ]);
  }
}

final List<Map<String, dynamic>> dishItem = [
  {
    'name': 'Classic Greek \nSalad',
    'time': '15mins',
    'image': "assets/pngs/dishone.png",
  },
  {
    'name': 'Crunchy Nut \nColeslaw',
    'time': '10mins',
    'image': "assets/pngs/dishtwo.png",
  },
  {
    'name': 'Classic Greek \nSalad',
    'time': '15mins',
    'image': "assets/pngs/dishone.png",
  },
  {
    'name': 'Crunchy Nut \nColeslaw',
    'time': '10mins',
    'image': "assets/pngs/dishtwo.png",
  },
  {
    'name': 'Classic Greek \nSalad',
    'time': '15mins',
    'image': "assets/pngs/dishone.png",
  },
  {
    'name': 'Crunchy Nut \nColeslaw',
    'time': '10mins',
    'image': "assets/pngs/dishtwo.png",
  },
];
