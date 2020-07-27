import 'package:discover/widgets/explore_more.dart';
import 'package:flutter/material.dart';
import '../widgets/home_tab.dart';
import '../widgets/place_card.dart';
import '../widgets/explore_more.dart';
import '../widgets/app_bar.dart';

import '../variables.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          HomeAppBar(1),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      "Discover",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                  HomeTab(),
                  PlaceCard(),
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 20, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Explore more",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ExploreMore(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
