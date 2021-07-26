import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:weather_clime/screens/get_started_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
  }

  Future getLocation() async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GetStartedScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: getLocation(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('Loading');
            } else if (snapshot.hasError) {
              return Text('Error : ${snapshot.error}  ');
            } else {
              return SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
