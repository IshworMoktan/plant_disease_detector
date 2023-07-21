// import 'package:flutter/material.dart';
// import 'package:plant_disease_detector/constants/constants.dart';

// class TakePictureSection extends SliverFixedExtentList {
//   TakePictureSection(Size size, {Key? key})
//       : super(
//           key: key,
//           delegate: SliverChildBuilderDelegate(
//             (BuildContext context, index) {
//               return Container(
//                 height: size.height * 0.26,
//                 decoration: BoxDecoration(
//                   color: kWhite,
//                   borderRadius:
//                       BorderRadius.circular((0.061 * size.height * 0.26)),
//                 ),
//                 child: Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: 150,
//                           width: 300,
//                           decoration: const BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('assets/images/guide.png'),
//                                 fit: BoxFit.cover),
//                           ),
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                         onPressed: () {}, child: const Text('Take a picture'))
//                   ],
//                 ),
//               );
//             },
//             childCount: 1,
//           ),
//           itemExtent: size.height * 0.26,
//         );
// }

import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class TakePictureSection extends SliverFixedExtentList {
  TakePictureSection({Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: kWhite,
                    border: Border.all(color: Colors.green, width: 5),
                    borderRadius: BorderRadius.circular((30)),
                    boxShadow: [
                      BoxShadow(
                        color: kMain.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 145,
                              width: 300,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/guide.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: 200,
        );
}
