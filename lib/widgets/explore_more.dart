import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ExploreMore extends StatelessWidget {
  final itemList = [
    {
      "id": '1',
      "name": 'Kayaking',
      "primaryColor": Color.fromRGBO(138, 140, 196, 1),
      "accentColor": Color.fromRGBO(138, 140, 196, 0.2),
      "icon": "assets/icons/kayak.svg",
    },
    {
      "id": '2',
      "name": 'Snorkeling',
      "primaryColor": Color.fromRGBO(228, 189, 88, 1),
      "accentColor": Color.fromRGBO(228, 189, 88, 0.2),
      "icon": "assets/icons/snorkeling.svg",
    },
    {
      "id": '3',
      "name": 'Ballooning',
      "primaryColor": Color.fromRGBO(162, 137, 179, 1),
      "accentColor": Color.fromRGBO(162, 137, 179, 0.2),
      "icon": "assets/icons/balloon.svg",
    },
    {
      "id": '4',
      "name": 'Climbing',
      "primaryColor": Color.fromRGBO(82, 181, 178, 1),
      "accentColor": Color.fromRGBO(82, 181, 178, 0.2),
      "icon": "assets/icons/mountain.svg",
    },
    {
      "id": '4',
      "name": 'Ziplining',
      "primaryColor": Color.fromRGBO(242, 84, 84, 1),
      "accentColor": Color.fromRGBO(242, 84, 84, 0.2),
      "icon": "assets/icons/zip-line.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: SizedBox(
        height: 100,
        child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 18),
            itemCount: itemList.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 40,
              childAspectRatio: 3 / 2,
            ),
            itemBuilder: (context, index) => itemBuilder(index)),
      ),
    );
  }

  Widget itemBuilder(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 70,
              color: itemList[index]['accentColor'],
              child: Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    itemList[index]['icon'],
                    color: itemList[index]['primaryColor'],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          itemList[index]['name'],
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}
