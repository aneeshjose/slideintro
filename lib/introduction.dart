import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showDoneButton: true,
        showNextButton: false,
        onDone: () {},
        pages: [
          introUI(
            title: Container(
              height: MediaQuery.of(context).size.width / 2,
              // child: Container(), add the image1 here as Image Widget
            ),
            body: Container(
              height: MediaQuery.of(context).size.width / 2,
              // child: Container(), add the image2 here as Image widget
            ),
          ),
          introUI(
            title: Container(
              height: MediaQuery.of(context).size.width / 2,
              // child: Container(), add the image1 here as Image Widget
            ),
            body: Container(
              height: MediaQuery.of(context).size.width / 2,
              // child: Container(), add the image2 here as Image widget
            ),
          ),
          introUI(
            title: Container(
              height: MediaQuery.of(context).size.width / 2,
              // child: Container(), add the image1 here as Image Widget
            ),
            body: Container(
              height: MediaQuery.of(context).size.width / 2,
              // child: Container(), add the image2 here as Image widget
            ),
          ),
        ],
        animationDuration: 1,
        dotsDecorator: DotsDecorator(
          activeColor: Colors.yellow,
          color: Colors.yellow[200],
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          activeSize: Size(20, 10),
          size: Size(10, 10),
        ),
        done: Container(
          height: 40,
          width: 200,
          child: Center(
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }

  PageViewModel introUI({Widget title, Widget body}) {
    return PageViewModel(bodyWidget: body, titleWidget: title);
  }
}
