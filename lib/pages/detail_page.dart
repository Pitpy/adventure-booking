import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';

import '../variables.dart';

class DetailPage extends StatelessWidget {
  DetailPage({this.itemList});

  final Map<String, Object> itemList;

  @override
  Widget build(BuildContext context) {
    var sh = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: sh.height / 2,
            child: Image.asset(
              itemList['image'],
              fit: BoxFit.cover,
              color: Color.fromRGBO(99, 154, 160, 1),
              colorBlendMode: BlendMode.lighten,
            ),
          ),
          HomeAppBar(2),
          DraggableScrollableSheet(
            maxChildSize: .8,
            initialChildSize: .63,
            minChildSize: .63,
            builder: (context, scrollController) {
              return Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _title(itemList, sh),
                      _numPeople(itemList, sh),
                      _book(),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

@override
Widget _title(Map<String, Object> itemList, Size sh) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            itemList["name"],
            style: TextStyle(
              color: Colors.black87,
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '\$${itemList["price"]}',
            style: TextStyle(
              color: primaryColor,
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.place,
            color: primaryColor,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            itemList["address"],
            style: TextStyle(
              color: primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 60,
        width: double.infinity,
        child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Row(
            children: <Widget>[
              Icon(
                index + 1 <= itemList["rate"] ? Icons.star : Icons.star_border,
                color: Colors.amber,
              ),
              if (index == 4)
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "(${itemList['rate']})",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    ],
  );
}

@override
Widget _numPeople(Map<String, Object> itemList, Size sh) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "People",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          "Number of people in your group",
          style: TextStyle(fontSize: 16, color: Colors.black45),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: GridView.builder(
            primary: false,
            itemCount: 5,
            padding: EdgeInsets.symmetric(vertical: 20),
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              childAspectRatio: 3 / 3,
            ),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: index == 0 ? Colors.black87 : Colors.indigo[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(
                    color: index == 0 ? Colors.white : Colors.black87,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Description",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          itemList['desc'],
          style: TextStyle(
            fontSize: 16,
            color: Colors.black45,
          ),
        ),
      ],
    ),
  );
}

@override
Widget _book() {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          child: Icon(
            Icons.favorite_border,
            color: Colors.indigo[400],
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.indigo[200],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 22),
          width: 250,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Book Trip Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 10,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 14,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
