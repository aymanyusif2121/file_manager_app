import 'package:flutter/material.dart';
import 'package:weather_clime/page_view.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/preview.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white.withOpacity(.2),
            ),
            Positioned(
              top: 500,
              left: MediaQuery.of(context).size.width / 3,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.7,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.7),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageViewGrid(),
                      ),
                    );
                  },
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
