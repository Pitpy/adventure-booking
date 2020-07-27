import 'package:flutter/material.dart';

import '../pages/detail_page.dart';

class PlaceCard extends StatelessWidget {
  final itemList = [
    {
      "id": 1,
      "name": "Some Mountain",
      "address": "Vangvieng, Laos",
      "image": "assets/images/05.jpg",
      "desc":
          "Some mountain is located in Vang Vieng, Viengchane Provine, Laos. It is far from Vientaine about 200KM. It is a beautiful place! ",
      "price": 250,
      "rate": 4.0,
    },
    {
      "id": 2,
      "name": "Some Mountain",
      "address": "Vangvieng, Laos",
      "image": "assets/images/03.jpg",
      "desc":
          "Some mountain is located in Vang Vieng, Viengchane Provine, Laos. It is far from Vientaine about 200KM. It is a beautiful place!",
      "price": 220,
      "rate": 5.0,
    },
    {
      "id": 3,
      "name": "Some Mountain",
      "address": "Vangvieng, Laos",
      "image": "assets/images/01.jpg",
      "desc":
          "Some mountain is located in Vang Vieng, Viengchane Provine, Laos. It is far from Vientaine about 200KM. It is a beautiful place!",
      "price": 260,
      "rate": 4.0,
    },
    {
      "id": 4,
      "name": "Some Mountain",
      "address": "Vangvieng, Laos",
      "image": "assets/images/04.jpg",
      "desc":
          "Some mountain is located in Vang Vieng, Viengchane Provine, Laos. It is far from Vientaine about 200KM. It is a beautiful place!",
      "price": 250,
      "rate": 5.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 300,
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 18),
          scrollDirection: Axis.horizontal,
          itemCount: itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            // crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) => itemBuilder(index, context),
        ),
      ),
    );
  }

  Widget itemBuilder(int index, BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Color.fromRGBO(99, 104, 188, 1),
        child: InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailPage(
                itemList: itemList[index],
              ),
            ),
          ),
          // splashColor: Color.fromRGBO(99, 104, 188, 0.5),
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: double.infinity,
                child: Image.asset(
                  itemList[index]["image"],
                  fit: BoxFit.cover,
                  // color: Color.fromRGBO(99, 154, 160, 1),
                  // colorBlendMode: BlendMode.overlay,
                ),
              ),
              Positioned(
                bottom: 18,
                left: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      itemList[index]["name"],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(1, 2),
                              blurRadius: 3),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.place,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          itemList[index]["address"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
