import 'package:ama/pages/landing_pages/final_onboarding.dart';
import 'package:ama/pages/landing_pages/onboarding1.dart';
import 'package:ama/pages/landing_pages/onboarding2.dart';
import 'package:ama/pages/landing_pages/onboarding3.dart';
import 'package:ama/pages/landing_pages/onboarding4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageBuilder extends StatefulWidget {
  const PageBuilder({Key? key}) : super(key: key);

  @override
  State<PageBuilder> createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Stack(children: [
      PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Center(child: HomePage()),
          Center(child: OnBoardingPage()),
          Center(child: OnBoardingPage3()),
          Center(child: OnBoardingPage2()),
          Center(child: FinalOnboarding()),
        ],
        physics: BouncingScrollPhysics(),

        //dot indicator
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 5,
                effect: WormEffect(radius: 8, activeDotColor: Colors.black),
                onDotClicked: (index) => controller.animateToPage(index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInCubic),
              ),
            ),
          )
        ],
      )
    ]);
  }
}
