import 'package:animated_onboarding/walk_through/page/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'page_contents.dart';

class Page2 extends PageItem {
  @override
  final ValueNotifier<double> valueNotifier = ValueNotifier<double>(-1);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, double ratio, child) {
        return PageContents(
          backgroundColor: Colors.amber,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 100 * ratio : 10 * ratio, 0),
                child: Text(
                  'Home cooking made simple',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.merge(const TextStyle(color: Colors.black)),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 200,
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 200 * ratio : 30 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/kitchen.svg',
                  width: 200,
                ),
              ),
            ),
            Positioned(
              left: 230,
              top: 350,
              child: Transform.translate(
                offset: Offset(100 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/woman2.svg',
                  width: 180,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
