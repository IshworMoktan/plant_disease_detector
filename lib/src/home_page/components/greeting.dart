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
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 36, 152, 138),
                        Color(0xffe4f3e4)
                      ],
                      stops: [0, 1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular((0.079 * height)),
                        bottomRight: Radius.circular((0.079 * height))),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        (0.092 * height), 0, 0, (0.099 * height)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //     height: 120,
                            //     child: Image.asset(
                            //       'assets/images/logo.png',
                            //     )),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            Text(
                              'GreenScan',
                              style: TextStyle(
                                  fontFamily: 'SFBold',
                                  fontSize: (0.2 * height),
                                  color: kWhite),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //     height: 120,
                            //     child: Image.asset(
                            //       'assets/images/logo.png',
                            //     )),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            Text(
                              'Your digital plant pathologist',
                              style: TextStyle(fontSize: 15, color: kWhite),
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
