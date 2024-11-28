// import 'package:flutter/material.dart';
// import 'package:fur_ever_homes/screens/getStarted/get_started.dart';
// import 'package:fur_ever_homes/screens/login/signup/login_screen.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';




// class SwapContainer extends StatefulWidget {
//   @override
//   _SwapContainerState createState() => _SwapContainerState();
// }

// class _SwapContainerState extends State<SwapContainer> {
//   PageController _pageController = PageController(initialPage: 0);
//   int _currentPage = 0;

//   void _onPageChanged(int index) {
//     setState(() {
//       _currentPage = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               onPageChanged: _onPageChanged,
//               children: [
//                 LoginScreen(),
//                 GetStarted(
//                   onpress: (){}
//                               // _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);

                  
//                 )
//                 // Screen2(), // Use Screen2 widget
//               ],
//             ),
//           ),
//           SmoothPageIndicator(
//             controller: _pageController,
//             count: 2,
//             effect: WormEffect(), // You can customize the effect here
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//                    _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);

//         },
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }
