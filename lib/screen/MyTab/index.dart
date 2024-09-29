// import 'package:fabcurate_flutter/screen/categoryScreen/index.dart';
// import 'package:fabcurate_flutter/screen/homeScreen/index.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyTabs extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final index = ModalRoute.of(context)?.settings.arguments as int? ?? 0;

//     return CustomTabBar(
//       child: DefaultTabController(
//         length: 5,
//         child: Scaffold(
//           body: TabBarView(
//             children: [
//               HomeScreen(),
//               CategoryScreen(),
//               HomeScreen(), // Replace with CJRate screen
//               HomeScreen(), // Replace with Sale screen
//               HomeScreen(), // Replace with More screen
//             ],
//           ),
//           bottomNavigationBar: TabBar(
//             indicatorColor: index == 0 ? Color(0xFFFF8D2F) : Colors.transparent,
//             tabs: [
//               Tab(
//                 icon: index == 0 ? CupertinoIcons.home : CupertinoIcons.(),
//                 child: Text(
//                   'Home',
//                   style: TextStyle(
//                     color: index == 0 ? Color(0xFFFF8D2F) : Colors.black,
//                     fontSize: 15,
//                   ),
//                 ),
//               ),
//               Tab(
//                 icon: index == 1 ? OfferDisabale() : Offer(),
//                 child: Text(
//                   'Category',
//                   style: TextStyle(
//                     color: index == 1 ? Color(0xFFFF8D2F) : Colors.black,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               Tab(
//                 icon: index == 2 ? ShoppingCart() : CartDisable(),
//                 child: Text(
//                   'CJRate',
//                   style: TextStyle(
//                     color: index == 2 ? Color(0xFFFF8D2F) : Colors.black,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               Tab(
//                 icon: index == 3 ? Profile() : ProfileDisable(),
//                 child: Text(
//                   'Sale',
//                   style: TextStyle(
//                     color: index == 3 ? Color(0xFFFF8D2F) : Colors.black,
//                   ),
//                 ),
//               ),
//               Tab(
//                 icon: index == 4 ? Profile() : ProfileDisable(),
//                 child: Text(
//                   'More',
//                   style: TextStyle(
//                     color: index == 4 ? Color(0xFFFF8D2F) : Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomTabBar extends StatelessWidget {
//   final Widget child;

//   const CustomTabBar({required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     );
//   }
// }
