// import 'package:flutter/material.dart';
// import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
// import 'package:plant_disease_detector/src/history_page.dart';
// import 'package:plant_disease_detector/src/home_page/home.dart';

// class AppDrawerPage extends StatefulWidget {
//   const AppDrawerPage({super.key});

//   @override
//   State<AppDrawerPage> createState() => _AppDrawerPageState();
// }

// class _AppDrawerPageState extends State<AppDrawerPage> {
//   List<ScreenHiddenDrawer> _pages = [];

//   @override
//   void initState() {
//     super.initState();
//     _pages = [
//       ScreenHiddenDrawer(
//           ItemHiddenMenu(
//             name: 'Homepage',
//             baseStyle: TextStyle(),
//             selectedStyle: TextStyle(),
//           ),
//           Home()),
//       ScreenHiddenDrawer(
//           ItemHiddenMenu(
//             name: 'Report History',
//             baseStyle: TextStyle(),
//             selectedStyle: TextStyle(),
//           ),
//           HistoryPage())
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return HiddenDrawerMenu(
//         initPositionSelected: 0,
//         screens: _pages,
//         backgroundColorMenu: Colors.transparent);
//   }
// }
