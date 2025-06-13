// // // // // // // // main_screen.dart

// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:flutter_kashef/pages/CameraPage.dart';
// // // // // // // //import 'addcamera.dart'; // Make sure the import path is correct
// // // // // // // import 'history.dart';
// // // // // // // import 'Alerts.dart';
// // // // // // // import 'profile.dart';

// // // // // // // class MainScreen extends StatefulWidget {
// // // // // // //   const MainScreen({super.key});

// // // // // // //   @override
// // // // // // //   _MainScreenState createState() => _MainScreenState();
// // // // // // // }

// // // // // // // class _MainScreenState extends State<MainScreen> {
// // // // // // //   int _currentIndex = 0; // The current index of the selected tab

// // // // // // //   // List of pages to display for each tab
// // // // // // //   final List<Widget> _pages = [
// // // // // // //     CameraPage(),
// // // // // // //     History(),
// // // // // // //    Alerts(),
// // // // // // //     Profile(),
// // // // // // //   ];

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       body: IndexedStack(
// // // // // // //         index: _currentIndex, // Keep the state of each page
// // // // // // //         children: _pages, // Display the selected page
// // // // // // //       ),

// // // // // // //       bottomNavigationBar: BottomNavigationBar(
// // // // // // //         backgroundColor: Colors.white,
// // // // // // //         showSelectedLabels: false,
// // // // // // //         onTap: (value) {
// // // // // // //           setState(() {
// // // // // // //             _currentIndex = value;
// // // // // // //           });
// // // // // // //         },
// // // // // // //         currentIndex: _currentIndex,
// // // // // // //         unselectedItemColor: Colors.grey,
// // // // // // //         selectedItemColor: Colors.black,
// // // // // // //         items: [
// // // // // // //           BottomNavigationBarItem(
// // // // // // //             icon: Icon(Icons.camera_enhance_rounded),
// // // // // // //             label: "files",
// // // // // // //           ),
// // // // // // //           BottomNavigationBarItem(
// // // // // // //             icon: Icon(Icons.history),
// // // // // // //             label: "history",
// // // // // // //           ),
// // // // // // //           BottomNavigationBarItem(
// // // // // // //             icon: Icon(Icons.warning_rounded),
// // // // // // //             label: "files",
// // // // // // //           ),
// // // // // // //           BottomNavigationBarItem(
// // // // // // //             icon: Icon(Icons.person),
// // // // // // //             label: "profile",
// // // // // // //           ),
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //       // bottomNavigationBar: CurvedNavigationBar(//this is bad, ui is bad

// // // // // // //       //   index: _currentIndex,
// // // // // // //       //   items: const <Widget>[
// // // // // // //       //     Icon(Icons.camera_enhance_rounded, size: 30),
// // // // // // //       //     Icon(Icons.history, size: 30),
// // // // // // //       //     Icon(Icons.warning_rounded, size: 30),
// // // // // // //       //     Icon(Icons.person, size: 30),
// // // // // // //       //   ],
// // // // // // //       //   animationDuration: const Duration(milliseconds: 200),
// // // // // // //       //   onTap: (index) {
// // // // // // //       //     setState(() {
// // // // // // //       //       _currentIndex = index; // Update the current index to change the page
// // // // // // //       //     });
// // // // // // //       //   },
// // // // // // //       //   backgroundColor: const Color.fromARGB(0, 255, 255, 255), // Transparent background
// // // // // // //       //   color: const Color.fromARGB(255, 255, 255, 255), // White bar color
// // // // // // //       //   buttonBackgroundColor: const Color.fromARGB(133, 29, 29, 150), // Grey button background
// // // // // // //       //   height: 75,
// // // // // // //       // ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_kashef/pages/CameraPage.dart';
// // // // // // import 'history.dart';
// // // // // // import 'alerts.dart';
// // // // // // import 'profile.dart';

// // // // // // class MainScreen extends StatefulWidget {
// // // // // //   const MainScreen({super.key});

// // // // // //   @override
// // // // // //   _MainScreenState createState() => _MainScreenState();
// // // // // // }

// // // // // // class _MainScreenState extends State<MainScreen> {
// // // // // //   int _currentIndex = 0; // The current index of the selected tab

// // // // // //   // متغيرات لتخزين البيانات اللازمة لصفحة التنبيهات
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   // List of pages to display for each tab
// // // // // //   late final List<Widget> _pages;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     // إعداد الصفحات بما في ذلك صفحة التنبيهات مع التحقق من وجود بيانات
// // // // // //     _pages = [
// // // // // //       CameraPage(
// // // // // //         onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // // // //           setState(() {
// // // // // //             imagePath = capturedImagePath;
// // // // // //             predictionResult = capturedPredictionResult;
// // // // // //             _currentIndex = 2; // الانتقال إلى صفحة Alerts
// // // // // //           });
// // // // // //         },
// // // // // //       ),
// // // // // //       History(),
// // // // // //       Alerts(
// // // // // //         imagePath: imagePath ?? 'No Image', // توفير صورة افتراضية في حال عدم وجود بيانات
// // // // // //         predictionResult: predictionResult ?? 'No Prediction', // توفير قيمة افتراضية في حال عدم وجود بيانات
// // // // // //       ),
// // // // // //       Profile(),
// // // // // //     ];
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       body: IndexedStack(
// // // // // //         index: _currentIndex, // Keep the state of each page
// // // // // //         children: _pages, // Display the selected page
// // // // // //       ),
// // // // // //       bottomNavigationBar: BottomNavigationBar(
// // // // // //         backgroundColor: Colors.white,
// // // // // //         showSelectedLabels: false,
// // // // // //         onTap: (value) {
// // // // // //           setState(() {
// // // // // //             _currentIndex = value;
// // // // // //           });
// // // // // //         },
// // // // // //         currentIndex: _currentIndex,
// // // // // //         unselectedItemColor: Colors.grey,
// // // // // //         selectedItemColor: Colors.black,
// // // // // //         items: [
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.camera_enhance_rounded),
// // // // // //             label: "Camera",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.history),
// // // // // //             label: "History",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.warning_rounded),
// // // // // //             label: "Alerts",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.person),
// // // // // //             label: "Profile",
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_kashef/pages/CameraPage.dart';
// // // // // // import 'history.dart';
// // // // // // import 'alerts.dart';
// // // // // // import 'profile.dart';

// // // // // // class MainScreen extends StatefulWidget {
// // // // // //   const MainScreen({super.key});

// // // // // //   @override
// // // // // //   _MainScreenState createState() => _MainScreenState();
// // // // // // }

// // // // // // class _MainScreenState extends State<MainScreen> {
// // // // // //   int _currentIndex = 0; // The current index of the selected tab

// // // // // //   // Variables to store the necessary data for the Alerts page
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   // List of pages to display for each tab
// // // // // //   late final List<Widget> _pages;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     // Setup the pages, including the Alerts page with data check
// // // // // //     _pages = [
// // // // // //       CameraPage(
// // // // // //         onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // // // //           setState(() {
// // // // // //             imagePath = capturedImagePath;
// // // // // //             predictionResult = capturedPredictionResult;
// // // // // //             _currentIndex = 2; // Navigate to Alerts page
// // // // // //           });
// // // // // //         },
// // // // // //       ),
// // // // // //       History(),
// // // // // //       Alerts(
// // // // // //         imagePath: imagePath ?? 'No Image', // Provide a default image if no data
// // // // // //         predictionResult: predictionResult ?? 'No Prediction', // Provide a default value if no data
// // // // // //       ),
// // // // // //       Profile(),
// // // // // //     ];
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       body: IndexedStack(
// // // // // //         index: _currentIndex, // Keep the state of each page
// // // // // //         children: _pages, // Display the selected page
// // // // // //       ),
// // // // // //       bottomNavigationBar: BottomNavigationBar(
// // // // // //         backgroundColor: Colors.white,
// // // // // //         showSelectedLabels: false,
// // // // // //         onTap: (value) {
// // // // // //           setState(() {
// // // // // //             _currentIndex = value;
// // // // // //           });
// // // // // //         },
// // // // // //         currentIndex: _currentIndex,
// // // // // //         unselectedItemColor: Colors.grey,
// // // // // //         selectedItemColor: Colors.black,
// // // // // //         items: [
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.camera_enhance_rounded),
// // // // // //             label: "Camera",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.history),
// // // // // //             label: "History",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.warning_rounded),
// // // // // //             label: "Alerts",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.person),
// // // // // //             label: "Profile",
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_kashef/pages/CameraPage.dart';
// // // // // // import 'history.dart';
// // // // // // import 'alerts.dart';
// // // // // // import 'profile.dart';

// // // // // // class MainScreen extends StatefulWidget {
// // // // // //   const MainScreen({super.key});

// // // // // //   @override
// // // // // //   _MainScreenState createState() => _MainScreenState();
// // // // // // }

// // // // // // class _MainScreenState extends State<MainScreen> {
// // // // // //   int _currentIndex = 0; // The current index of the selected tab

// // // // // //   // Variables to store the necessary data for the Alerts page
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   // List of pages to display for each tab
// // // // // //   late final List<Widget> _pages;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     // Setup the pages, including the Alerts page with data check
// // // // // //     _pages = [
// // // // // //       CameraPage(
// // // // // //         onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // // // //           setState(() {
// // // // // //             imagePath = capturedImagePath;
// // // // // //             predictionResult = capturedPredictionResult;
// // // // // //             _currentIndex = 2; // Navigate to Alerts page
// // // // // //           });
// // // // // //         },
// // // // // //       ),
// // // // // //       History(),
// // // // // //       Alerts(imageUrl: imageUrl, predictionResult: result["prediction"]),

// // // // // //   // Removed imagePath and predictionResult parameters as they aren't defined in the constructor
// // // // // //       Profile(),
// // // // // //     ];
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       body: IndexedStack(
// // // // // //         index: _currentIndex, // Keep the state of each page
// // // // // //         children: _pages, // Display the selected page
// // // // // //       ),
// // // // // //       bottomNavigationBar: BottomNavigationBar(
// // // // // //         backgroundColor: Colors.white,
// // // // // //         showSelectedLabels: false,
// // // // // //         onTap: (value) {
// // // // // //           setState(() {
// // // // // //             _currentIndex = value;
// // // // // //           });
// // // // // //         },
// // // // // //         currentIndex: _currentIndex,
// // // // // //         unselectedItemColor: Colors.grey,
// // // // // //         selectedItemColor: Colors.black,
// // // // // //         items: [
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.camera_enhance_rounded),
// // // // // //             label: "Camera",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.history),
// // // // // //             label: "History",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.warning_rounded),
// // // // // //             label: "Alerts",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.person),
// // // // // //             label: "Profile",
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_kashef/pages/CameraPage.dart';
// // // // // // import 'history.dart';
// // // // // // import 'alerts.dart';
// // // // // // import 'profile.dart';
// // // // // // import 'InstructionPage.dart';

// // // // // // class MainScreen extends StatefulWidget {
// // // // // //   const MainScreen({super.key});

// // // // // //   @override
// // // // // //   _MainScreenState createState() => _MainScreenState();
// // // // // // }

// // // // // // class _MainScreenState extends State<MainScreen> {
// // // // // //   int _currentIndex =2 ;
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     final _pages = [
// // // // // //       CameraPage(
// // // // // //         onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // // // //           setState(() {
// // // // // //             print("here");
// // // // // //             print(capturedImagePath);
// // // // // //             print("here 2");
// // // // // //             print(capturedPredictionResult);
// // // // // //             imagePath = capturedImagePath;
// // // // // //             predictionResult = capturedPredictionResult;
// // // // // //             _currentIndex = 2;
// // // // // //           });
// // // // // //         },
// // // // // //       ),
// // // // // //       History(),
// // // // // //       Alerts(
// // // // // //         imageUrl: imagePath ?? '',
// // // // // //         predictionResult: predictionResult ?? 'No Prediction',
// // // // // //       ),
// // // // // //        InstructionPage(),
// // // // // //       Profile(),

// // // // // //     ];

// // // // // //     return Scaffold(
// // // // // //       body: IndexedStack(
// // // // // //         index: _currentIndex,
// // // // // //         children: _pages,
// // // // // //       ),
// // // // // //       bottomNavigationBar: BottomNavigationBar(
// // // // // //         backgroundColor: Colors.white,
// // // // // //         showSelectedLabels: false,
// // // // // //         onTap: (value) {
// // // // // //           setState(() {
// // // // // //             _currentIndex = value;
// // // // // //           });
// // // // // //         },
// // // // // //         currentIndex: _currentIndex,
// // // // // //         unselectedItemColor: Colors.grey,
// // // // // //         selectedItemColor: Colors.blue,
// // // // // //         items: [
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.camera_enhance_rounded),
// // // // // //             label: "Camera",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.history),
// // // // // //             label: "History",
// // // // // //           ),
// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.warning_rounded),
// // // // // //             label: "Alerts",
// // // // // //           ),

// // // // // //            BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.info),
// // // // // //             label: "InstructionPage",
// // // // // //           ),

// // // // // //           BottomNavigationBarItem(
// // // // // //             icon: Icon(Icons.person),
// // // // // //             label: "Profile",
// // // // // //           ),

// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:flutter_kashef/pages/CameraPage.dart';
// // // // // import 'history.dart';
// // // // // import 'alerts.dart';
// // // // // import 'profile.dart';
// // // // // import 'InstructionPage.dart';

// // // // // class MainScreen extends StatefulWidget {
// // // // //   const MainScreen({super.key});

// // // // //   @override
// // // // //   _MainScreenState createState() => _MainScreenState();
// // // // // }

// // // // // class _MainScreenState extends State<MainScreen> {
// // // // //   int _currentIndex = 2;
// // // // //   String? imagePath;
// // // // //   String? predictionResult;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final _pages = [
// // // // //       CameraPage(
// // // // //         onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // // //           setState(() {
// // // // //             imagePath = capturedImagePath;
// // // // //             predictionResult = capturedPredictionResult;
// // // // //             _currentIndex = 2;
// // // // //           });
// // // // //         },
// // // // //       ),
// // // // //       History(),
// // // // //       Alerts(
// // // // //         imageUrl: imagePath ?? '',
// // // // //         predictionResult: predictionResult ?? 'No Prediction',
// // // // //       ),
// // // // //       InstructionPage(),
// // // // //       Profile(),
// // // // //     ];

// // // // //     return Scaffold(
// // // // //       body: IndexedStack(
// // // // //         index: _currentIndex,
// // // // //         children: _pages,
// // // // //       ),
// // // // //       bottomNavigationBar: Container(
// // // // //         padding: const EdgeInsets.symmetric(vertical: 8.0),
// // // // //         decoration: BoxDecoration(
// // // // //           color: Colors.white,
// // // // //           borderRadius: const BorderRadius.only(
// // // // //             topLeft: Radius.circular(16),
// // // // //             topRight: Radius.circular(16),
// // // // //           ),
// // // // //           boxShadow: [
// // // // //             BoxShadow(
// // // // //               color: Colors.grey.withOpacity(0.3),
// // // // //               spreadRadius: 2,
// // // // //               blurRadius: 5,
// // // // //               offset: const Offset(0, -3),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //         child: BottomNavigationBar(
// // // // //           type: BottomNavigationBarType.fixed,
// // // // //           backgroundColor: Colors.transparent,
// // // // //           elevation: 0,
// // // // //           showSelectedLabels: false,
// // // // //           showUnselectedLabels: false,
// // // // //           onTap: (value) {
// // // // //             setState(() {
// // // // //               _currentIndex = value;
// // // // //             });
// // // // //           },
// // // // //           currentIndex: _currentIndex,
// // // // //           unselectedItemColor: Colors.grey,
// // // // //           selectedItemColor: Colors.blue,
// // // // //           items: [
// // // // //             _buildNavItem(Icons.camera_enhance_rounded, 0),
// // // // //             _buildNavItem(Icons.history, 1),
// // // // //             _buildNavItem(Icons.warning_rounded, 2),
// // // // //             _buildNavItem(Icons.info, 3),
// // // // //             _buildNavItem(Icons.person, 4),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   BottomNavigationBarItem _buildNavItem(IconData icon, int index) {
// // // // //     return BottomNavigationBarItem(
// // // // //       icon: Stack(
// // // // //         alignment: Alignment.topCenter,
// // // // //         children: [
// // // // //           if (_currentIndex == index)
// // // // //             Positioned(
// // // // //               top: -8, // Adjust this value for precise positioning above the icon
// // // // //               child: Container(
// // // // //                 width: 40, // Adjust the width as needed
// // // // //                 height: 3, // Height of the line
// // // // //                 decoration: BoxDecoration(
// // // // //                   color: Colors.blue,
// // // // //                   borderRadius: BorderRadius.circular(1.5), // Rounded corners for the line
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           Icon(icon),
// // // // //         ],
// // // // //       ),
// // // // //       label: "",
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_kashef/pages/CameraPage.dart';
// // // // import 'history.dart';
// // // // import 'alerts.dart';
// // // // import 'profile.dart';
// // // // import 'InstructionPage.dart';

// // // // class MainScreen extends StatefulWidget {
// // // //   const MainScreen({super.key});

// // // //   @override
// // // //   _MainScreenState createState() => _MainScreenState();
// // // // }

// // // // class _MainScreenState extends State<MainScreen> {
// // // //   int _currentIndex = 2;
// // // //   String? imagePath;
// // // //   String? predictionResult;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final _pages = [
// // // //       CameraPage(
// // // //         onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // //           setState(() {
// // // //             imagePath = capturedImagePath;
// // // //             predictionResult = capturedPredictionResult;
// // // //             _currentIndex = 2;
// // // //           });
// // // //         },
// // // //       ),
// // // //       History(),
// // // //       Alerts(
// // // //         imageUrl: imagePath ?? '',
// // // //         predictionResult: predictionResult ?? 'No Prediction',
// // // //       ),
// // // //       InstructionPage(),
// // // //       Profile(),
// // // //     ];

// // // //     return Scaffold(
// // // //       body: IndexedStack(
// // // //         index: _currentIndex,
// // // //         children: _pages,
// // // //       ),
// // // //       bottomNavigationBar: Container(
// // // //         decoration: BoxDecoration(
// // // //           color: Colors.white,
// // // //           border: Border(
// // // //             top: BorderSide(
// // // //               color: Colors.grey.withOpacity(0.3),
// // // //               width: 1,
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         child: BottomNavigationBar(
// // // //           type: BottomNavigationBarType.fixed,
// // // //           backgroundColor: Colors.white,
// // // //           elevation: 0,
// // // //           showSelectedLabels: true,
// // // //           showUnselectedLabels: true,
// // // //           onTap: (value) {
// // // //             setState(() {
// // // //               _currentIndex = value;
// // // //             });
// // // //           },
// // // //           currentIndex: _currentIndex,
// // // //           selectedItemColor: Colors.blue,
// // // //           unselectedItemColor: Colors.grey,
// // // //           items: [
// // // //             _buildNavItem(Icons.camera_enhance_rounded, "Camera", 0),
// // // //             _buildNavItem(Icons.history, "History", 1),
// // // //             _buildNavItem(Icons.warning_rounded, "Alerts", 2),
// // // //             _buildNavItem(Icons.info, "Safety", 3),
// // // //             _buildNavItem(Icons.person, "Profile", 4),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   BottomNavigationBarItem _buildNavItem(IconData icon, String label, int index) {
// // // //     return BottomNavigationBarItem(
// // // //       icon: Column(
// // // //         children: [
// // // //           if (_currentIndex == index)
// // // //             Container(
// // // //               width: 30, // Adjust the width as needed
// // // //               height: 3, // Height of the indicator line
// // // //               color: Colors.blue, // Color of the indicator line
// // // //             ),
// // // //           Icon(icon),
// // // //         ],
// // // //       ),
// // // //       label: label,
// // // //     );
// // // //   }
// // // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_kashef/pages/CameraPage.dart';
// // import 'history.dart';
// // import 'alerts.dart';
// // import 'profile.dart';
// // import 'InstructionPage.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:badges/badges.dart' as badges;
// // import 'AddCameraPage.dart';
// // // Import the badges package

// // class MainScreen extends StatefulWidget {
// //   const MainScreen({super.key});

// //   @override
// //   _MainScreenState createState() => _MainScreenState();
// // }

// // class _MainScreenState extends State<MainScreen> {
// //   int _currentIndex = 2;
// //   String? imagePath;
// //   String? predictionResult;

// //   @override
// //   void initState() {
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final _pages = [
// //       CameraPage(
// //         onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// //           setState(() {
// //             imagePath = capturedImagePath;
// //             predictionResult = capturedPredictionResult;
// //             _currentIndex = 2;
// //           });
// //         },
// //       ),
// //       History(),
// //       Alerts(
// //         imageUrl: imagePath ?? '',
// //         predictionResult: predictionResult ?? 'No Prediction',
// //       ),
// //       InstructionPage(),
// //       Profile(),
// //     ];

// //     return Scaffold(
// //       body: IndexedStack(
// //         index: _currentIndex,
// //         children: _pages,
// //       ),
// //       bottomNavigationBar: Container(
// //         decoration: BoxDecoration(
// //           color: Colors.white,
// //           border: Border(
// //             top: BorderSide(
// //               color: Colors.grey.withOpacity(0.3),
// //               width: 1,
// //             ),
// //           ),
// //         ),
// //         child: BottomNavigationBar(
// //           type: BottomNavigationBarType.fixed,
// //           backgroundColor: Colors.white,
// //           elevation: 0,
// //           showSelectedLabels: true,
// //           showUnselectedLabels: true,
// //           onTap: (value) {
// //             setState(() {
// //               _currentIndex = value;
// //             });
// //           },
// //           currentIndex: _currentIndex,
// //           selectedItemColor: Colors.blue,
// //           unselectedItemColor: Colors.grey,
// //           items: [
// //             _buildNavItem(Icons.camera_enhance_rounded, "Add CameraPage ", 0),
// //             _buildNavItem(Icons.history, "History", 1),
// //             _buildAlertNavItem(Icons.warning_rounded, "Alerts",
// //                 2), // Using the modified alert item
// //             _buildNavItem(Icons.info, "Safety", 3),
// //             _buildNavItem(Icons.person, "Profile", 4),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   BottomNavigationBarItem _buildNavItem(
// //       IconData icon, String label, int index) {
// //     return BottomNavigationBarItem(
// //       icon: Column(
// //         children: [
// //           if (_currentIndex == index)
// //             Container(
// //               width: 30,
// //               height: 3,
// //               color: Colors.blue,
// //             ),
// //           Icon(icon),
// //         ],
// //       ),
// //       label: label,
// //     );
// //   }

// //   BottomNavigationBarItem _buildAlertNavItem(
// //       IconData icon, String label, int index) {
// //     return BottomNavigationBarItem(
// //       icon: StreamBuilder<QuerySnapshot>(
// //         stream: FirebaseFirestore.instance
// //             .collection(
// //                 'History') // Make sure this is your correct collection name
// //             .where('status', isEqualTo: 'In Progress')
// //             .snapshots(),
// //         builder: (context, snapshot) {
// //           int alertCount = snapshot.hasData ? snapshot.data!.docs.length : 0;

// //           return badges.Badge(
// //             showBadge: alertCount > 0,
// //             badgeContent: Text(
// //               '$alertCount',
// //               style: const TextStyle(color: Colors.white),
// //             ),
// //             badgeStyle: badges.BadgeStyle(
// //               badgeColor: Colors.red,
// //             ),
// //             child: Icon(icon),
// //           );
// //         },
// //       ),
// //       label: label,
// //     );
// //   }
// // }






// import 'package:flutter/material.dart';
// import 'package:flutter_kashef/pages/AddCameraPage.dart'; // Import AddCameraPage
// import 'history.dart';
// import 'alerts.dart';
// import 'profile.dart';
// import 'InstructionPage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:badges/badges.dart' as badges;

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 2;
//   String? imagePath;
//   String? predictionResult;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final _pages = [
//       AddCameraPage(), // Replace CameraPage with AddCameraPage
//       History(),
//       Alerts(
//         imageUrl: imagePath ?? '',
//         predictionResult: predictionResult ?? 'No Prediction',
//       ),
//       InstructionPage(),
//       Profile(),
//     ];

//     return Scaffold(
//       body: IndexedStack(
//         index: _currentIndex,
//         children: _pages,
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border(
//             top: BorderSide(
//               color: Colors.grey.withOpacity(0.3),
//               width: 1,
//             ),
//           ),
//         ),
//         child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           backgroundColor: Colors.white,
//           elevation: 0,
//           showSelectedLabels: true,
//           showUnselectedLabels: true,
//           onTap: (value) {
//             setState(() {
//               _currentIndex = value;
//             });
//           },
//           currentIndex: _currentIndex,
//           selectedItemColor: Colors.blue,
//           unselectedItemColor: Colors.grey,
//           items: [
//             _buildNavItem(Icons.camera_enhance_rounded, "Add Camera", 0),
//             _buildNavItem(Icons.history, "History", 1),
//             _buildAlertNavItem(Icons.warning_rounded, "Alerts",
//                 2), // Using the modified alert item
//             _buildNavItem(Icons.info, "Safety", 3),
//             _buildNavItem(Icons.person, "Profile", 4),
//           ],
//         ),
//       ),
//     );
//   }

//   BottomNavigationBarItem _buildNavItem(
//       IconData icon, String label, int index) {
//     return BottomNavigationBarItem(
//       icon: Column(
//         children: [
//           if (_currentIndex == index)
//             Container(
//               width: 30,
//               height: 3,
//               color: Colors.blue,
//             ),
//           Icon(icon),
//         ],
//       ),
//       label: label,
//     );
//   }

//   BottomNavigationBarItem _buildAlertNavItem(
//       IconData icon, String label, int index) {
//     return BottomNavigationBarItem(
//       icon: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance
//             .collection(
//                 'History') // Make sure this is your correct collection name
//             .where('status', isEqualTo: 'In Progress')
//             .snapshots(),
//         builder: (context, snapshot) {
//           int alertCount = snapshot.hasData ? snapshot.data!.docs.length : 0;

//           return badges.Badge(
//             showBadge: alertCount > 0,
//             badgeContent: Text(
//               '$alertCount',
//               style: const TextStyle(color: Colors.white),
//             ),
//             badgeStyle: badges.BadgeStyle(
//               badgeColor: Colors.red,
//             ),
//             child: Icon(icon),
//           );
//         },
//       ),
//       label: label,
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_kashef/pages/AddCameraPage.dart'; // Import AddCameraPage
import 'history.dart';
import 'alerts.dart';
import 'profile.dart';
import 'InstructionPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:badges/badges.dart' as badges;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 2;
  String? imagePath;
  String? predictionResult;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      AddCameraPage(onImageCaptured: (capturedImagePath, capturedPredictionResult) {
        setState(() {
          imagePath = capturedImagePath;
          predictionResult = capturedPredictionResult;
          _currentIndex = 2; // الانتقال إلى صفحة التنبيهات
        });
      }), // تمرير الدالة إلى AddCameraPage
      History(),
      Alerts(
        imageUrl: imagePath ?? '',
        predictionResult: predictionResult ?? 'No Prediction',
      ),
      InstructionPage(),
      Profile(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            _buildNavItem(Icons.camera_enhance_rounded, "Add Camera", 0),
            _buildNavItem(Icons.history, "History", 1),
            _buildAlertNavItem(Icons.warning_rounded, "Alerts", 2),
            _buildNavItem(Icons.info, "Safety", 3),
            _buildNavItem(Icons.person, "Profile", 4),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          if (_currentIndex == index)
            Container(
              width: 30,
              height: 3,
              color: Colors.blue,
            ),
          Icon(icon),
        ],
      ),
      label: label,
    );
  }

  BottomNavigationBarItem _buildAlertNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('History')
            .where('status', isEqualTo: 'In Progress')
            .snapshots(),
        builder: (context, snapshot) {
          int alertCount = snapshot.hasData ? snapshot.data!.docs.length : 0;

          return badges.Badge(
            showBadge: alertCount > 0,
            badgeContent: Text(
              '$alertCount',
              style: const TextStyle(color: Colors.white),
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
            ),
            child: Icon(icon),
          );
        },
      ),
      label: label,
    );
  }
}
