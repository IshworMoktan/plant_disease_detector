// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
// import 'package:plant_disease_detector/constants/constants.dart';
// import 'package:plant_disease_detector/services/classify.dart';
// import 'package:plant_disease_detector/services/disease_provider.dart';
// import 'package:plant_disease_detector/services/hive_database.dart';
// import 'package:plant_disease_detector/src/home_page/components/history.dart';
// import 'package:plant_disease_detector/src/home_page/components/instructions.dart';
// import 'package:plant_disease_detector/src/home_page/components/takepicture.dart';
// import 'package:plant_disease_detector/src/home_page/components/titlesection.dart';
// import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';
// import 'package:plant_disease_detector/src/suggestions_page/suggestions.dart';
// import 'package:provider/provider.dart';

// class HistoryPage extends StatefulWidget {
//   const HistoryPage({Key? key}) : super(key: key);

//   static const routeName = '/';

//   @override
//   State<HistoryPage> createState() => _HistoryPageState();
// }

// class _HistoryPageState extends State<HistoryPage> {
//   @override
//   void dispose() {
//     Hive.close();
//     super.dispose();
//   }

//   final user = FirebaseAuth.instance.currentUser;
//   Future<void> _handleRefresh() async {}
//   @override
//   Widget build(BuildContext context) {
//     // Get disease from provider
//     final _diseaseService = Provider.of<DiseaseService>(context);

//     // Hive service
//     HiveService _hiveService = HiveService();

//     // Data
//     Size size = MediaQuery.of(context).size;
//     final Classifier classifier = Classifier();
//     late Disease _disease;

//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: SpeedDial(
//         backgroundColor: const Color.fromARGB(255, 206, 239, 169),
//         animatedIconTheme: const IconThemeData(size: 28.0),
//         elevation: 30,
//         tooltip: 'Diagnose',
//         label: const Text('Diagnose'),
//         icon: Icons.camera,
//         spacing: 10,
//         children: [
//           SpeedDialChild(
//             child: const FaIcon(
//               FontAwesomeIcons.file,
//               color: kWhite,
//             ),
//             label: "Upload image",
//             backgroundColor: kMain,
//             onTap: () async {
//               late double _confidence;
//               await classifier.getDisease(ImageSource.gallery).then((value) {
//                 _disease = Disease(
//                     name: value![0]["label"],
//                     imagePath: classifier.imageFile.path);

//                 _confidence = value[0]['confidence'];
//               });
//               // Check confidence
//               if (_confidence > 0.8) {
//                 // Set disease for Disease Service
//                 _diseaseService.setDiseaseValue(_disease);

//                 // Save disease
//                 _hiveService.addDisease(_disease);

//                 Navigator.restorablePushNamed(
//                   context,
//                   Suggestions.routeName,
//                 );
//               } else {
//                 // Display unsure message
//               }
//             },
//           ),
//           SpeedDialChild(
//             child: const FaIcon(
//               FontAwesomeIcons.camera,
//               color: kWhite,
//             ),
//             label: "Take photo",
//             backgroundColor: kMain,
//             onTap: () async {
//               late double _confidence;

//               await classifier.getDisease(ImageSource.camera).then((value) {
//                 _disease = Disease(
//                     name: value![0]["label"],
//                     imagePath: classifier.imageFile.path);

//                 _confidence = value[0]['confidence'];
//               });

//               // Check confidence
//               if (_confidence > 0.8) {
//                 // Set disease for Disease Service
//                 _diseaseService.setDiseaseValue(_disease);

//                 // Save disease
//                 _hiveService.addDisease(_disease);

//                 Navigator.restorablePushNamed(
//                   context,
//                   Suggestions.routeName,
//                 );
//               } else {
//                 // Display unsure message
//               }
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('assets/images/bgr.jpg'), fit: BoxFit.cover),
//         ),
//         // child:
//         // LiquidPullToRefresh(
//         //   showChildOpacityTransition: false,
//         //   color: const Color.fromARGB(255, 36, 152, 138),
//         //   onRefresh: _handleRefresh,
//         child: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               pinned: false,
//               flexibleSpace: Container(
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Color.fromARGB(255, 36, 152, 138),
//                       Color(0xffe4f3e4)
//                     ],
//                     stops: [0, 1],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                 ),
//               ),
//               leading: const Icon(Icons.menu),
//               expandedHeight: 100,
//               centerTitle: true,
//               title: const Column(
//                 children: [
//                   Text(
//                     'GreenScan',
//                     style: TextStyle(
//                         fontFamily: 'SFBold', fontSize: (30), color: kWhite),
//                   ),
//                   Text(
//                     'Your digital plant pathologist',
//                     style: TextStyle(fontSize: 10, color: kWhite),
//                   ),
//                 ],
//               ),
//             ),
//             TitleSection('  Your Report History', size.height * 0.044),
//             HistorySection(size, context, _diseaseService),
//             TitleSection('  Guide', size.height * 0.044),
//             TakePictureSection(),
//             InstructionsSection(size),
//           ],
//         ),
//         //  ),
//       ),
//     );
//   }
// }
