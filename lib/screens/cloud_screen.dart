import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:weather_clime/constatn/constants.dart';

class BottomNavationBar extends StatefulWidget {
  @override
  _BottomNavationBarState createState() => _BottomNavationBarState();
}

class _BottomNavationBarState extends State<BottomNavationBar> {
  Widget card() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Icon(
                Icons.folder_open_outlined,
                size: 40,
              ),
            ),
            Expanded(
              child: Text(
                'resarch',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '78 items',
                style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    color: Colors.black.withOpacity(.6)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Container(
                  height: 20,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/preview.png'),
                        radius: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/cloudy.jpg'),
                        radius: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/preview.png'),
                        radius: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/cloudy.jpg'),
                        radius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey.shade100,
          child: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 25, right: 25, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Cloud :D',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                letterSpacing: 1),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(.4)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.search,
                                  color: Colors.black.withOpacity(.9)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage('images/preview.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: null),
                          Positioned(
                            bottom: 10,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '458 Gb of 1 TB used',
                                      style:
                                          TextStyle(color: Color(0xff7D7388)),
                                    ),
                                  ),
                                  Container(
                                    child: new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width -
                                          90,
                                      animation: true,
                                      lineHeight: 10.0,
                                      animationDuration: 2500,
                                      percent: 0.8,
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: Color(0xff5E00CF),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            child: Text(
                              'aaa',
                              style: TextStyle(color: Colors.black),
                            ),
                            right: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade800,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Icon(
                                  Icons.present_to_all,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Unlimited Storage',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'Free',
                                      style: TextStyle(
                                          height: 2,
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(.6)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Wrap(children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Upgrade',
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff5E00F5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Folders',
                        style: kDefaultLabelTextStyle,
                      ),
                      //Lists of folders
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.50,
                          width: double.infinity,
                          child: GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              children: [
                                card(),
                                card(),
                                card(),
                                card(),
                                card(),
                                card(),
                              ]),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
