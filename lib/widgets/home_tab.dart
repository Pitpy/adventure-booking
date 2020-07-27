import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> tabList = ["Places", "Inspiration", "Emotions"];
  int selectedItem = 0;

  @override
  void initState() {
    super.initState();

    print(tabList);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabList.length,
          itemBuilder: (context, index) => itemBuilder(index),
        ),
      ),
    );
  }

  Widget itemBuilder(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              tabList[index],
              style: TextStyle(
                  color:
                      selectedItem == index ? Colors.black87 : Colors.black26,
                  fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                  color:
                      selectedItem == index ? Colors.black : Colors.transparent,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ],
        ),
      ),
    );
  }
}
