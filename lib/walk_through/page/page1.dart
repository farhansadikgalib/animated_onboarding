import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'page_contents.dart';
import 'page_item.dart';

class Page1 extends PageItem {
  @override
  final ValueNotifier<double> valueNotifier = ValueNotifier<double>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, double ratio, child) {
        return PageContents(
          backgroundColor: Colors.blue,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 150),
              child: Transform.translate(
                offset: Offset(200 * ratio, 0),
                child: Text(
                  'Make everyday cooking fun',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.symmetric(vertical: 350),
              child: Transform.translate(
                offset: Offset(700 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/shelves.svg',
                  width: 400,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.symmetric(vertical: 100),
              child: Transform.translate(
                offset: Offset(300 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/woman1.svg',
                  width: 100,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.symmetric(vertical: 100),
              child: Transform.translate(
                offset: Offset(600 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/table.svg',
                  width: 350,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
