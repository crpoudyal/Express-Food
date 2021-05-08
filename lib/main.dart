import 'package:flutter/material.dart';

import 'read.dart';

void main() {
  runApp(MaterialApp(
    title: 'Express Food',
    debugShowCheckedModeBanner: false,
    home: ExpressFood(),
  ));
}

class ExpressFood extends StatelessWidget {
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
              "Aviliable Food Articles",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bebas',
                  letterSpacing: 3),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 50,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 500,
                  height: 440,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/food.jpg",
                        fit: BoxFit.cover,
                        width: 500,
                        height: 200,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "XYZ Food",
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
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontFamily: 'lato'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Read(),
                              ));
                        },
                        child: Text("Read More"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
