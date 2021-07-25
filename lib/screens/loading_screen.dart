import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_clime/screens/get_started_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Future.delayed(
        Duration(seconds: 3),
        () => getLocation(),
      );
    });
  }

  void getLocation() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GetStartedScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCircle(
          size: 100.0,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
