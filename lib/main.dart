import 'package:flutter/material.dart';

import 'buy.dart';

void main() {
  runApp(MaterialApp(
    title: 'Express Food',
    debugShowCheckedModeBanner: false,
    home: ExpressFood(),
  ));
}

class ExpressFood extends StatefulWidget {
  @override
  _ExpressFoodState createState() => _ExpressFoodState();
}

class _ExpressFoodState extends State<ExpressFood> {
  Widget cards(
      String imageassets, String foodtitle, String fooddesc, String rname) {
    return Card(
      elevation: 50,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: 500,
          height: 470,
          child: Column(
            children: [
              Image.asset(
                imageassets,
                fit: BoxFit.cover,
                width: 500,
                height: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                foodtitle,
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Bebas'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                fooddesc,
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: 'lato'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.restaurant),
                  Text(
                    rname,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'lato',
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Buy(),
                      ));
                },
                child: Text("know More"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_forward),
        actions: [Icon(Icons.more_vert)],
        title: Text('EXpRess Food'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Aviliable Food",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bebas',
                  letterSpacing: 3),
            ),
            SizedBox(
              height: 20,
            ),
            cards(
                "assets/food.jpg",
                "Meat Cury",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                "   Yellow Forest Nepal"),
            cards(
                "assets/food2.jpg",
                "Chicken Ball",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                "   Jay Nepal Restaurant"),
            cards(
                "assets/food3.jpg",
                "chicken fleet",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                "   Basantapur Restaurant"),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home),
            Icon(Icons.shopping_cart),
            Icon(Icons.article)
          ],
        ),
      ),
    );
  }
}
