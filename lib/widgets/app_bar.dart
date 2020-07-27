import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  HomeAppBar(this.page);

  final page;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 24,
        ),
        Container(
          // width: double.infinity,
          // color: Color.fromRGBO(255, 255, 255, .2),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.short_text,
                  size: 50,
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                ),
                page == 1
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SizedBox(
                          height: 45,
                          width: 45,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/pitpy.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    : Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
