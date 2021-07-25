import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:weather_clime/constatn/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  Widget cardIcon(Color cardBackground, IconData iconInsideCard) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: cardBackground.withOpacity(.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            iconInsideCard,
            color: cardBackground.withOpacity(1),
            size: 25,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 25, right: 25, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Good Morning \nRenedy :D',
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
                            border:
                                Border.all(color: Colors.black.withOpacity(.4)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.search,
                              color: Colors.black.withOpacity(.9)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Stack(
                    children: [
                      Center(
                        child: new CircularPercentIndicator(
                          radius: 250.0,
                          lineWidth: 25.0,
                          animation: true,
                          percent: 0.7,
                          center: new Text(
                            "70.0%",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.yellow,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '289 GB',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          Text(
                            'Free',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black.withOpacity(.6)),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '500 GB',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            Text(
                              'Free',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black.withOpacity(.6)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('Category', style: kDefaultLabelTextStyle),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      children: [
                        cardIcon(Colors.blue, Icons.image),
                        cardIcon(Colors.green, Icons.description),
                        cardIcon(Colors.pink, Icons.video_library_outlined),
                        cardIcon(Colors.yellow, Icons.queue_music),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Recent',
                    style: kDefaultLabelTextStyle,
                  ),
                  SizedBox(
                    height: 20,
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
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(.7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.offline_bolt,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Competitive-analistyc. bolt',
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
                          Expanded(
                            child: Icon(
                              Icons.more_vert,
                              size: 40,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
