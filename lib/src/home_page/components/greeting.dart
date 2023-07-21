import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class GreetingSection extends SliverFixedExtentList {
  GreetingSection(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                    (0.079 * height), 0, (0.079 * height), (0.079 * height)),
                child: Container(
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular((0.079 * height)),
                        bottomRight: Radius.circular((0.079 * height))),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        (0.092 * height), 0, 0, (0.099 * height)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 120,
                                width: 80,
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  color: Colors.green,
                                )),
                            Text(
                              'GreenScan',
                              style: TextStyle(
                                  fontFamily: 'SFBold',
                                  fontSize: (0.2 * height),
                                  color: kMain),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: height,
        );
}
