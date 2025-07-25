import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buildRowTExt(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          Text(
            'see more',
            style: TextStyle(
              color: Color.fromARGB(133, 133, 133, 1),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStackListViewChild() {
    return Stack(
      children: [
        Image.asset(
          'images/Image.png',
          width: 222,
          height: 272,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 25,
          right: 26,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.fromLTRB(8, 4, 10, 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/icons/iC_Notification.png'),
                Text('18 km'),
              ],
            ),
          ),
        ),

        Container(
          width: 222,
          height: 272,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(0, 13, 13, 13),
                Color.fromARGB(1, 0, 0, 0),
              ],
            ),
          ),
        ),
        Positioned(
          left: 25,
          top: 190,
          child: Text(
            'DreamsVille House',

            style: TextStyle(
              color: const Color.fromARGB(255, 255, 2555, 255),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          left: 25,
          top: 210,
          child: Text(
            'JL Sultan iskander Muda',
            style: TextStyle(color: Color.fromARGB(255, 215, 215, 215)),
          ),
        ),
      ],
    );
  }

  Widget buildListViewChild() {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/imageList/Image1.png', width: 74, height: 70),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Orchad House',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Rp 2500 000 000 / Year',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.blueAccent,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('images/icons/IC_Bed.png'),
                        Text(
                          '6 Bedroom',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('images/icons/IC_Bath.png'),
                        Text(
                          '4 Bathroom',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
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
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
          ),
          centerTitle: true,
          actions: [Image.asset('images/icons/IC_Notification.png')],
          actionsPadding: EdgeInsets.only(right: 23.5),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildRowTExt('Near from you'),
              SizedBox(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildStackListViewChild(),
                    buildStackListViewChild(),
                    buildStackListViewChild(),
                  ],
                ),
              ),
              buildRowTExt('Near from you'),
              SizedBox(height: 10),

              SizedBox(
                width: 305,
                height: 270,
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
