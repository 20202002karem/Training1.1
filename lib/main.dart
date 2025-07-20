import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buildRowTExt(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
        ),
        Text('see more', style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget buildStackListViewChild() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 0.7,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'images/photo_5.jpeg',
              height: 300,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 250,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withAlpha(10),
                  Colors.black.withAlpha(150),
                ],
                stops: [0.4, 1],
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DreamsVille House',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'JL Sultan iskander Muda',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Container(
              padding: EdgeInsets.only(left: 2, right: 2),
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Icon(Icons.abc), Text('18 km')],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListViewChild() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'images/photo-13.jpeg',
              width: 70,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orchad House',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            Text(
              'Rp 2500 000 000 / Year',
              style: TextStyle(color: Colors.blueAccent),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.bedroom_parent_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text('6 Bedroom', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bathroom_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text('4 Bathroom', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.add_alert, size: 30, weight: 50, color: Colors.black),
          ],
          actionsPadding: EdgeInsets.only(right: 20),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRowTExt('Near from you'),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildStackListViewChild(),
                    buildStackListViewChild(),
                  ],
                ),
              ),
              buildRowTExt('Near from you'),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView(
                  children: [
                    buildListViewChild(),
                    buildListViewChild(),
                    buildListViewChild(),
                    buildListViewChild(),
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
