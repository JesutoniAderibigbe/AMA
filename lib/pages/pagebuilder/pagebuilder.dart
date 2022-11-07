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
    return PageView(
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
    );
  }
}
