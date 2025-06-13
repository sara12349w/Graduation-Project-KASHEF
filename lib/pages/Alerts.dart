// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'dart:io';

// // // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // // import 'instructionPage.dart';

// // // // // // // class Alerts extends StatelessWidget {
// // // // // // //   final String imagePath;
// // // // // // //   final String predictionResult;

// // // // // // //   Alerts({required this.imagePath, required this.predictionResult});

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     print("Image path: $imagePath");  // لطباعة مسار الصورة للتأكد
// // // // // // //     print("Prediction result: $predictionResult");  // لطباعة النتيجة للتأكد

// // // // // // //     return SafeArea(
// // // // // // //       child: Scaffold(
// // // // // // //         appBar: AppBar(
// // // // // // //           title: const Text("Alerts"),
// // // // // // //           leading: IconButton(
// // // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // // //             onPressed: () {
// // // // // // //               Navigator.pop(context);
// // // // // // //             },
// // // // // // //           ),
// // // // // // //           backgroundColor: Colors.white,
// // // // // // //           elevation: 1,
// // // // // // //           centerTitle: true,
// // // // // // //           titleTextStyle: const TextStyle(
// // // // // // //             color: Colors.black,
// // // // // // //             fontSize: 20,
// // // // // // //             fontWeight: FontWeight.bold,
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         body: SingleChildScrollView(
// // // // // // //           child: Padding(
// // // // // // //             padding: const EdgeInsets.all(16.0),
// // // // // // //             child: Column(
// // // // // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // //               children: [
// // // // // // //                 Image.asset(
// // // // // // //                   'assets/images/Alert.png',
// // // // // // //                   height: 200,
// // // // // // //                   width: 200,
// // // // // // //                   fit: BoxFit.cover,
// // // // // // //                 ),
// // // // // // //                 const SizedBox(height: 1),
// // // // // // //                 const Center(
// // // // // // //                   child: Text(
// // // // // // //                     "Gas Leak has been occurred",
// // // // // // //                     style: TextStyle(
// // // // // // //                       fontSize: 22,
// // // // // // //                       color: Colors.red,
// // // // // // //                       fontWeight: FontWeight.w800,
// // // // // // //                     ),
// // // // // // //                     textAlign: TextAlign.center,
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 const SizedBox(height: 20),
// // // // // // //                 Align(
// // // // // // //                   alignment: Alignment.centerLeft,
// // // // // // //                   child: const Text(
// // // // // // //                     "Thermal Image",
// // // // // // //                     style: TextStyle(
// // // // // // //                       fontSize: 18,
// // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 const SizedBox(height: 20),
// // // // // // //                 _buildImageBox(context),
// // // // // // //                 const SizedBox(height: 20),
// // // // // // //                 Text(
// // // // // // //                   "Prediction Result: ${predictionResult.isNotEmpty ? predictionResult : 'No Prediction'}",
// // // // // // //                   style: const TextStyle(
// // // // // // //                     fontSize: 18,
// // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // //                     color: Colors.blue,
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 const SizedBox(height: 20),
// // // // // // //                 ElevatedButton(
// // // // // // //                   onPressed: () {
// // // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // // //                         const SnackBar(content: Text('Status Updated!')));
// // // // // // //                   },
// // // // // // //                   child: const Text(
// // // // // // //                     '     Update Status     ',
// // // // // // //                     style: TextStyle(color: Colors.white),
// // // // // // //                   ),
// // // // // // //                   style: ElevatedButton.styleFrom(
// // // // // // //                     backgroundColor: Colors.blue,
// // // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // // //                     shape: RoundedRectangleBorder(
// // // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 const SizedBox(height: 10),
// // // // // // //                 ElevatedButton(
// // // // // // //                   onPressed: () {
// // // // // // //                     Navigator.push(
// // // // // // //                       context,
// // // // // // //                       MaterialPageRoute(
// // // // // // //                         builder: (context) => InstructionPage(),
// // // // // // //                       ),
// // // // // // //                     );
// // // // // // //                   },
// // // // // // //                   child: const Text(
// // // // // // //                     'Display Instructions',
// // // // // // //                     style: TextStyle(color: Colors.white),
// // // // // // //                   ),
// // // // // // //                   style: ElevatedButton.styleFrom(
// // // // // // //                     backgroundColor: Colors.blue,
// // // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // // //                     shape: RoundedRectangleBorder(
// // // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 const SizedBox(height: 20),
// // // // // // //                 ElevatedButton(
// // // // // // //                   onPressed: () {
// // // // // // //                     Navigator.pushAndRemoveUntil(
// // // // // // //                       context,
// // // // // // //                       MaterialPageRoute(builder: (context) => MainScreen()), // Ensure to replace with actual import
// // // // // // //                       (Route<dynamic> route) => false,
// // // // // // //                     );
// // // // // // //                   },
// // // // // // //                   child: const Text(
// // // // // // //                     'Done',
// // // // // // //                     style: TextStyle(color: Colors.white),
// // // // // // //                   ),
// // // // // // //                   style: ElevatedButton.styleFrom(
// // // // // // //                     backgroundColor: Colors.green,
// // // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // // // // //                     shape: RoundedRectangleBorder(
// // // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildImageBox(BuildContext context) {
// // // // // // //     return Container(
// // // // // // //       padding: const EdgeInsets.all(16),
// // // // // // //       decoration: BoxDecoration(
// // // // // // //         color: Colors.grey[200],
// // // // // // //         borderRadius: BorderRadius.circular(20),
// // // // // // //         boxShadow: [
// // // // // // //           BoxShadow(
// // // // // // //             color: Colors.grey.withOpacity(0.5),
// // // // // // //             spreadRadius: 5,
// // // // // // //             blurRadius: 7,
// // // // // // //             offset: const Offset(0, 3),
// // // // // // //           ),
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //       child: Column(
// // // // // // //         children: [
// // // // // // //           ClipRRect(
// // // // // // //             borderRadius: BorderRadius.circular(15),
// // // // // // //             child: Image.file(
// // // // // // //               File(imagePath),
// // // // // // //               height: 150,
// // // // // // //               width: double.infinity,
// // // // // // //               fit: BoxFit.cover,
// // // // // // //               errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
// // // // // // //                 return Container(
// // // // // // //                   height: 150,
// // // // // // //                   width: double.infinity,
// // // // // // //                   color: Colors.grey,
// // // // // // //                   child: const Center(child: Text("Image not available")),
// // // // // // //                 );
// // // // // // //               },
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'dart:io';
// // // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // import 'instructionPage.dart';

// // // // // // class Alerts extends StatefulWidget {
// // // // // //   const Alerts({super.key});

// // // // // //   @override
// // // // // //   _AlertsState createState() => _AlertsState();
// // // // // // }

// // // // // // class _AlertsState extends State<Alerts> {
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _loadSavedData();
// // // // // //   }

// // // // // //   Future<void> _loadSavedData() async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     setState(() {
// // // // // //       imagePath = prefs.getString('lastImagePath');
// // // // // //       predictionResult = prefs.getString('lastPredictionResult');
// // // // // //     });
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     print("Image path: $imagePath");  // لطباعة مسار الصورة للتأكد
// // // // // //     print("Prediction result: $predictionResult");  // لطباعة النتيجة للتأكد

// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: AppBar(
// // // // // //           title: const Text("Alerts"),
// // // // // //           leading: IconButton(
// // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // //             onPressed: () {
// // // // // //               Navigator.pop(context);
// // // // // //             },
// // // // // //           ),
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 1,
// // // // // //           centerTitle: true,
// // // // // //           titleTextStyle: const TextStyle(
// // // // // //             color: Colors.black,
// // // // // //             fontSize: 20,
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: SingleChildScrollView(
// // // // // //           child: Padding(
// // // // // //             padding: const EdgeInsets.all(16.0),
// // // // // //             child: Column(
// // // // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // // // //               children: [
// // // // // //                 Image.asset(
// // // // // //                   'assets/images/Alert.png',
// // // // // //                   height: 200,
// // // // // //                   width: 200,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 1),
// // // // // //                 const Center(
// // // // // //                   child: Text(
// // // // // //                     "Gas Leak has been occurred",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       color: Colors.red,
// // // // // //                       fontWeight: FontWeight.w800,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Align(
// // // // // //                   alignment: Alignment.centerLeft,
// // // // // //                   child: const Text(
// // // // // //                     "Thermal Image",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 18,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 imagePath != null
// // // // // //                     ? _buildImageBox(context)
// // // // // //                     : const Center(child: Text("No image available")),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Text(
// // // // // //                   "Prediction Result: ${predictionResult != null && predictionResult!.isNotEmpty ? predictionResult : 'No Prediction'}",
// // // // // //                   style: const TextStyle(
// // // // // //                     fontSize: 18,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                     color: Colors.blue,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     ScaffoldMessenger.of(context).showSnackBar(
// // // // // //                         const SnackBar(content: Text('Status Updated!')));
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     '     Update Status     ',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 10),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.push(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(
// // // // // //                         builder: (context) => InstructionPage(),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Display Instructions',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.pushAndRemoveUntil(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(builder: (context) => MainScreen()),
// // // // // //                       (Route<dynamic> route) => false,
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Done',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.green,
// // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildImageBox(BuildContext context) {
// // // // // //     return Container(
// // // // // //       padding: const EdgeInsets.all(16),
// // // // // //       decoration: BoxDecoration(
// // // // // //         color: Colors.grey[200],
// // // // // //         borderRadius: BorderRadius.circular(20),
// // // // // //         boxShadow: [
// // // // // //           BoxShadow(
// // // // // //             color: Colors.grey.withOpacity(0.5),
// // // // // //             spreadRadius: 5,
// // // // // //             blurRadius: 7,
// // // // // //             offset: const Offset(0, 3),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //       child: Column(
// // // // // //         children: [
// // // // // //           ClipRRect(
// // // // // //             borderRadius: BorderRadius.circular(15),
// // // // // //             child: Image.file(
// // // // // //               File(imagePath!),
// // // // // //               height: 150,
// // // // // //               width: double.infinity,
// // // // // //               fit: BoxFit.cover,
// // // // // //               errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
// // // // // //                 return Container(
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   color: Colors.grey,
// // // // // //                   child: const Center(child: Text("Image not available")),
// // // // // //                 );
// // // // // //               },
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // // import 'dart:io';
// // // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // import 'instructionPage.dart';

// // // // // // class Alerts extends StatefulWidget {
// // // // // //   const Alerts({super.key});

// // // // // //   @override
// // // // // //   _AlertsState createState() => _AlertsState();
// // // // // // }

// // // // // // class _AlertsState extends State<Alerts> {
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _loadSavedData();
// // // // // //     _saveInitialDataToFirestore();
// // // // // //   }

// // // // // //   Future<void> _loadSavedData() async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     setState(() {
// // // // // //       imagePath = prefs.getString('lastImagePath');
// // // // // //       predictionResult = prefs.getString('lastPredictionResult');
// // // // // //     });
// // // // // //   }

// // // // // //   Future<void> _saveInitialDataToFirestore() async {
// // // // // //     if (imagePath != null && predictionResult != null) {
// // // // // //       try {
// // // // // //         await FirebaseFirestore.instance.collection('History').add({
// // // // // //           'imagePath': imagePath,
// // // // // //           'predictionResult': predictionResult,
// // // // // //           'status': 'In Progress',
// // // // // //           'timestamp': Timestamp.now(),
// // // // // //         });
// // // // // //       } catch (e) {
// // // // // //         print("Error saving initial data to Firestore: $e");
// // // // // //       }
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _updateStatusInFirestore() async {
// // // // // //     try {
// // // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // // //         'imagePath': imagePath,
// // // // // //         'predictionResult': predictionResult,
// // // // // //         'status': 'Updated',
// // // // // //         'timestamp': Timestamp.now(),
// // // // // //       });
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Status Updated and sent to History!')),
// // // // // //       );
// // // // // //     } catch (e) {
// // // // // //       print("Error updating Firestore: $e");
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Error updating status.')),
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     print("Image path: $imagePath"); // لطباعة مسار الصورة للتأكد
// // // // // //     print("Prediction result: $predictionResult"); // لطباعة النتيجة للتأكد

// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: AppBar(
// // // // // //           title: const Text("Alerts"),
// // // // // //           leading: IconButton(
// // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // //             onPressed: () {
// // // // // //               Navigator.pop(context);
// // // // // //             },
// // // // // //           ),
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 1,
// // // // // //           centerTitle: true,
// // // // // //           titleTextStyle: const TextStyle(
// // // // // //             color: Colors.black,
// // // // // //             fontSize: 20,
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: SingleChildScrollView(
// // // // // //           child: Padding(
// // // // // //             padding: const EdgeInsets.all(16.0),
// // // // // //             child: Column(
// // // // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // // // //               children: [
// // // // // //                 Image.asset(
// // // // // //                   'assets/images/Alert.png',
// // // // // //                   height: 200,
// // // // // //                   width: 200,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 1),
// // // // // //                 const Center(
// // // // // //                   child: Text(
// // // // // //                     "Gas Leak has been occurred",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       color: Colors.red,
// // // // // //                       fontWeight: FontWeight.w800,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Align(
// // // // // //                   alignment: Alignment.centerLeft,
// // // // // //                   child: const Text(
// // // // // //                     "Thermal Image",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 18,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 imagePath != null
// // // // // //                     ? _buildImageBox(context)
// // // // // //                     : const Center(child: Text("No image available")),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Text(
// // // // // //                   "Prediction Result: ${predictionResult != null && predictionResult!.isNotEmpty ? predictionResult : 'No Prediction'}",
// // // // // //                   style: const TextStyle(
// // // // // //                     fontSize: 18,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                     color: Colors.blue,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () async {
// // // // // //                     await _updateStatusInFirestore();
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     '     Update Status     ',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 10),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.push(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(
// // // // // //                         builder: (context) => InstructionPage(),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Display Instructions',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.pushAndRemoveUntil(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(builder: (context) => MainScreen()),
// // // // // //                       (Route<dynamic> route) => false,
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Done',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: const Color.fromARGB(255, 68, 120, 130),
// // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildImageBox(BuildContext context) {
// // // // // //     return Container(
// // // // // //       padding: const EdgeInsets.all(16),
// // // // // //       decoration: BoxDecoration(
// // // // // //         color: Colors.grey[200],
// // // // // //         borderRadius: BorderRadius.circular(20),
// // // // // //         boxShadow: [
// // // // // //           BoxShadow(
// // // // // //             color: Colors.grey.withOpacity(0.5),
// // // // // //             spreadRadius: 5,
// // // // // //             blurRadius: 7,
// // // // // //             offset: const Offset(0, 3),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //       child: Column(
// // // // // //         children: [
// // // // // //           ClipRRect(
// // // // // //             borderRadius: BorderRadius.circular(15),
// // // // // //             child: Image.file(
// // // // // //               File(imagePath!),
// // // // // //               height: 150,
// // // // // //               width: double.infinity,
// // // // // //               fit: BoxFit.cover,
// // // // // //               errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
// // // // // //                 return Container(
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   color: Colors.grey,
// // // // // //                   child: const Center(child: Text("Image not available")),
// // // // // //                 );
// // // // // //               },
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );

// // // // // //   }
// // // // // // }

// // // // // /////////////////////////////////////////////////////////////////////////

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // // import 'dart:io';
// // // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // import 'instructionPage.dart';

// // // // // // class Alerts extends StatefulWidget {
// // // // // //   const Alerts({super.key});

// // // // // //   @override
// // // // // //   _AlertsState createState() => _AlertsState();
// // // // // // }

// // // // // // class _AlertsState extends State<Alerts> {
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _loadSavedData();
// // // // // //     _saveInitialDataToFirestore();
// // // // // //   }

// // // // // //   Future<void> _loadSavedData() async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     setState(() {
// // // // // //       imagePath = prefs.getString('lastImagePath');
// // // // // //       predictionResult = prefs.getString('lastPredictionResult');
// // // // // //     });
// // // // // //   }

// // // // // //   Future<void> _saveInitialDataToFirestore() async {
// // // // // //     if (imagePath != null && predictionResult != null) {
// // // // // //       try {
// // // // // //         await FirebaseFirestore.instance.collection('History').add({
// // // // // //           'imagePath': imagePath,
// // // // // //           'predictionResult': predictionResult,
// // // // // //           'status': 'In Progress',
// // // // // //           'timestamp': Timestamp.now(),
// // // // // //         });
// // // // // //       } catch (e) {
// // // // // //         print("Error saving initial data to Firestore: $e");
// // // // // //       }
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _updateStatusInFirestore() async {
// // // // // //     try {
// // // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // // //         'imagePath': imagePath,
// // // // // //         'predictionResult': predictionResult,
// // // // // //         'status': 'Updated',
// // // // // //         'timestamp': Timestamp.now(),
// // // // // //       });
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Status Updated and sent to History!')),
// // // // // //       );
// // // // // //     } catch (e) {
// // // // // //       print("Error updating Firestore: $e");
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Error updating status.')),
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     print("Image path: $imagePath"); // لطباعة مسار الصورة للتأكد
// // // // // //     print("Prediction result: $predictionResult"); // لطباعة النتيجة للتأكد

// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: AppBar(
// // // // // //           title: const Text("Alerts"),
// // // // // //           leading: IconButton(
// // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // //             onPressed: () {
// // // // // //               Navigator.pop(context);
// // // // // //             },
// // // // // //           ),
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 1,
// // // // // //           centerTitle: true,
// // // // // //           titleTextStyle: const TextStyle(
// // // // // //             color: Colors.black,
// // // // // //             fontSize: 20,
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: SingleChildScrollView(
// // // // // //           child: Padding(
// // // // // //             padding: const EdgeInsets.all(16.0),
// // // // // //             child: Column(
// // // // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // // // //               children: [
// // // // // //                 Image.asset(
// // // // // //                   'assets/images/Alert.png',
// // // // // //                   height: 200,
// // // // // //                   width: 200,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 1),
// // // // // //                 const Center(
// // // // // //                   child: Text(
// // // // // //                     "Gas Leak has been occurred",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       color: Colors.red,
// // // // // //                       fontWeight: FontWeight.w800,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Align(
// // // // // //                   alignment: Alignment.centerLeft,
// // // // // //                   child: const Text(
// // // // // //                     "Thermal Image",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 18,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 imagePath != null
// // // // // //                     ? _buildImageBox(context)
// // // // // //                     : const Center(child: Text("No image available")),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Text(
// // // // // //                   "Prediction Result: ${predictionResult != null && predictionResult!.isNotEmpty ? predictionResult : 'No Prediction'}",
// // // // // //                   style: const TextStyle(
// // // // // //                     fontSize: 18,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                     color: Colors.blue,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () async {
// // // // // //                     await _updateStatusInFirestore();
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     '     Update Status     ',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 10),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.push(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(
// // // // // //                         builder: (context) => InstructionPage(),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Display Instructions',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.pushAndRemoveUntil(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(builder: (context) => MainScreen()),
// // // // // //                       (Route<dynamic> route) => false,
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Done',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: const Color.fromARGB(255, 68, 120, 130),
// // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildImageBox(BuildContext context) {
// // // // // //     return Container(
// // // // // //       padding: const EdgeInsets.all(16),
// // // // // //       decoration: BoxDecoration(
// // // // // //         color: Colors.grey[200],
// // // // // //         borderRadius: BorderRadius.circular(20),
// // // // // //         boxShadow: [
// // // // // //           BoxShadow(
// // // // // //             color: Colors.grey.withOpacity(0.5),
// // // // // //             spreadRadius: 5,
// // // // // //             blurRadius: 7,
// // // // // //             offset: const Offset(0, 3),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //       child: Column(
// // // // // //         children: [
// // // // // //           ClipRRect(
// // // // // //             borderRadius: BorderRadius.circular(15),
// // // // // //             child: Image.file(
// // // // // //               File(imagePath!),
// // // // // //               height: 150,
// // // // // //               width: double.infinity,
// // // // // //               fit: BoxFit.cover,
// // // // // //               errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
// // // // // //                 return Container(
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   color: Colors.grey,
// // // // // //                   child: const Center(child: Text("Image not available")),
// // // // // //                 );
// // // // // //               },
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );

// // // // // //   }
// // // // // // }

// // // // // ///////////////////////////////////////////////////////
// // // // // ///
// // // // // ///
// // // // // ///

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // // import 'dart:io';
// // // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // import 'instructionPage.dart';

// // // // // // class Alerts extends StatefulWidget {
// // // // // //   final String imageUrl;
// // // // // //   final String predictionResult;

// // // // // //   const Alerts({Key? key, required this.imageUrl, required this.predictionResult}) : super(key: key);

// // // // // //   @override
// // // // // //   _AlertsState createState() => _AlertsState();
// // // // // // }

// // // // // // class _AlertsState extends State<Alerts> {
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _loadSavedData();
// // // // // //     _saveInitialDataToFirestore();
// // // // // //   }

// // // // // //   Future<void> _loadSavedData() async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     setState(() {
// // // // // //       imagePath = widget.imageUrl;
// // // // // //       predictionResult = widget.predictionResult;
// // // // // //     });
// // // // // //   }

// // // // // //   Future<void> _saveInitialDataToFirestore() async {
// // // // // //     if (widget.imageUrl.isNotEmpty && widget.predictionResult.isNotEmpty) {
// // // // // //       try {
// // // // // //         await FirebaseFirestore.instance.collection('History').add({
// // // // // //           'imageUrl': widget.imageUrl,
// // // // // //           'predictionResult': widget.predictionResult,
// // // // // //           'status': 'In Progress',
// // // // // //           'timestamp': Timestamp.now(),
// // // // // //         });
// // // // // //         print("Initial data saved to Firestore");
// // // // // //       } catch (e) {
// // // // // //         print("Error saving initial data to Firestore: $e");
// // // // // //       }
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _updateStatusInFirestore() async {
// // // // // //     try {
// // // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // // //         'imageUrl': widget.imageUrl,
// // // // // //         'predictionResult': widget.predictionResult,
// // // // // //         'status': 'Updated',
// // // // // //         'timestamp': Timestamp.now(),
// // // // // //       });
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Status Updated and sent to History!')),
// // // // // //       );
// // // // // //     } catch (e) {
// // // // // //       print("Error updating Firestore: $e");
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Error updating status.')),
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     print("Image path: ${widget.imageUrl}"); // لطباعة مسار الصورة للتأكد
// // // // // //     print("Prediction result: ${widget.predictionResult}"); // لطباعة النتيجة للتأكد

// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: AppBar(
// // // // // //           title: const Text("Alerts"),
// // // // // //           leading: IconButton(
// // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // //             onPressed: () {
// // // // // //               Navigator.pop(context);
// // // // // //             },
// // // // // //           ),
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 1,
// // // // // //           centerTitle: true,
// // // // // //           titleTextStyle: const TextStyle(
// // // // // //             color: Colors.black,
// // // // // //             fontSize: 20,
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: SingleChildScrollView(
// // // // // //           child: Padding(
// // // // // //             padding: const EdgeInsets.all(16.0),
// // // // // //             child: Column(
// // // // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // // // //               children: [
// // // // // //                 Image.asset(
// // // // // //                   'assets/images/Alert.png',
// // // // // //                   height: 200,
// // // // // //                   width: 200,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 1),
// // // // // //                 const Center(
// // // // // //                   child: Text(
// // // // // //                     "Gas Leak has been occurred",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       color: Colors.red,
// // // // // //                       fontWeight: FontWeight.w800,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Align(
// // // // // //                   alignment: Alignment.centerLeft,
// // // // // //                   child: const Text(
// // // // // //                     "Thermal Image",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 18,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 widget.imageUrl.isNotEmpty
// // // // // //                     ? _buildImageBox(context)
// // // // // //                     : const Center(child: Text("No image available")),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Text(
// // // // // //                   "Prediction Result: ${widget.predictionResult.isNotEmpty ? widget.predictionResult : 'No Prediction'}",
// // // // // //                   style: const TextStyle(
// // // // // //                     fontSize: 18,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                     color: Colors.blue,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () async {
// // // // // //                     await _updateStatusInFirestore();
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     '     Update Status     ',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 10),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.push(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(
// // // // // //                         builder: (context) => InstructionPage(),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Display Instructions',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.pushAndRemoveUntil(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(builder: (context) => MainScreen()),
// // // // // //                       (Route<dynamic> route) => false,
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Done',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: const Color.fromARGB(255, 68, 120, 130),
// // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildImageBox(BuildContext context) {
// // // // // //     return Container(
// // // // // //       padding: const EdgeInsets.all(16),
// // // // // //       decoration: BoxDecoration(
// // // // // //         color: Colors.grey[200],
// // // // // //         borderRadius: BorderRadius.circular(20),
// // // // // //         boxShadow: [
// // // // // //           BoxShadow(
// // // // // //             color: Colors.grey.withOpacity(0.5),
// // // // // //             spreadRadius: 5,
// // // // // //             blurRadius: 7,
// // // // // //             offset: const Offset(0, 3),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //       child: Column(
// // // // // //         children: [
// // // // // //           ClipRRect(
// // // // // //             borderRadius: BorderRadius.circular(15),
// // // // // //             child: Image.network(
// // // // // //               widget.imageUrl,
// // // // // //               height: 150,
// // // // // //               width: double.infinity,
// // // // // //               fit: BoxFit.cover,
// // // // // //               errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
// // // // // //                 return Container(
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   color: Colors.grey,
// // // // // //                   child: const Center(child: Text("Image not available")),
// // // // // //                 );
// // // // // //               },
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }



// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // import 'package:cached_network_image/cached_network_image.dart';
// // // // // // import 'instructionPage.dart';

// // // // // // class Alerts extends StatefulWidget {
// // // // // //   final String imageUrl;
// // // // // //   final String predictionResult;

// // // // // //   const Alerts(
// // // // // //       {Key? key, required this.imageUrl, required this.predictionResult})
// // // // // //       : super(key: key);

// // // // // //   @override
// // // // // //   _AlertsState createState() => _AlertsState();
// // // // // // }

// // // // // // class _AlertsState extends State<Alerts> {
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _loadSavedData();
// // // // // //     _saveInitialDataToFirestore();
// // // // // //   }

// // // // // //   Future<void> _loadSavedData() async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     setState(() {
// // // // // //       imagePath = widget.imageUrl;
// // // // // //       predictionResult = widget.predictionResult;
// // // // // //     });
// // // // // //   }

// // // // // //   // Future<void> _saveInitialDataToFirestore() async {
// // // // // //   //   if (widget.imageUrl.isNotEmpty && widget.predictionResult.isNotEmpty) {
// // // // // //   //     try {
// // // // // //   //       await FirebaseFirestore.instance.collection('History').add({
// // // // // //   //         'imageUrl': widget.imageUrl,
// // // // // //   //         'predictionResult': widget.predictionResult,
// // // // // //   //         'status': 'In Progress',
// // // // // //   //         'timestamp': Timestamp.now(),
// // // // // //   //       });
// // // // // //   //       print("Initial data saved to Firestore");
// // // // // //   //     } catch (e) {
// // // // // //   //       print("Error saving initial data to Firestore: $e");
// // // // // //   //     }
// // // // // //   //   }
// // // // // //   // }




// // // // // // Future<void> _saveInitialDataToFirestore() async {
// // // // // //   if (widget.imageUrl.isNotEmpty && widget.predictionResult.isNotEmpty) {
// // // // // //     try {
// // // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // // //         'imageUrl': widget.imageUrl,
// // // // // //         'normalImage': 'assets/images/normal.png', // إضافة مسار الصورة الثابتة
// // // // // //         'predictionResult': widget.predictionResult,
// // // // // //         'status': 'In Progress',
// // // // // //         'timestamp': Timestamp.now(),
// // // // // //       });
// // // // // //       print("Initial data saved to Firestore");
// // // // // //     } catch (e) {
// // // // // //       print("Error saving initial data to Firestore: $e");
// // // // // //     }
// // // // // //   }
// // // // // // }





// // // // // //   Future<void> _updateStatusInFirestore() async {
// // // // // //     try {
// // // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // // //         'imageUrl': widget.imageUrl,
// // // // // //         'predictionResult': widget.predictionResult,
// // // // // //         'status': 'Updated',
// // // // // //         'timestamp': Timestamp.now(),
// // // // // //       });
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Status Updated and sent to History!')),
// // // // // //       );
// // // // // //     } catch (e) {
// // // // // //       print("Error updating Firestore: $e");
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Error updating status.')),
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     print("Image path: ${widget.imageUrl}"); // طباعة مسار الصورة للتأكد
// // // // // //     print(
// // // // // //         "Prediction result: ${widget.predictionResult}"); // طباعة النتيجة للتأكد

// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: AppBar(
// // // // // //           title: const Text("Alerts"),
// // // // // //           leading: IconButton(
// // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // //             onPressed: () {
// // // // // //               Navigator.pop(context);
// // // // // //             },
// // // // // //           ),
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 1,
// // // // // //           centerTitle: true,
// // // // // //           titleTextStyle: const TextStyle(
// // // // // //             color: Colors.black,
// // // // // //             fontSize: 20,
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: SingleChildScrollView(
// // // // // //           child: Padding(
// // // // // //             padding: const EdgeInsets.all(16.0),
// // // // // //             child: Column(
// // // // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // // // //               children: [
// // // // // //                 Image.asset(
// // // // // //                   'assets/images/Alert.png',
// // // // // //                   height: 200,
// // // // // //                   width: 200,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 1),
// // // // // //                 const Center(
// // // // // //                   child: Text(
// // // // // //                     "Gas Leak has been occurred",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       color: Colors.red,
// // // // // //                       fontWeight: FontWeight.w800,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Align(
// // // // // //                   alignment: Alignment.centerLeft,
// // // // // //                   child: const Text(
// // // // // //                     "Thermal Image",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 18,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),

// // // // // //                 const SizedBox(height: 20),
// // // // // // // عرض الصورة الثابتة
// // // // // // Align(
// // // // // //   alignment: Alignment.centerLeft,
// // // // // //   child: const Text(
// // // // // //     "Normal Image",
// // // // // //     style: TextStyle(
// // // // // //       fontSize: 18,
// // // // // //       fontWeight: FontWeight.bold,
// // // // // //       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //     ),
// // // // // //   ),
// // // // // // ),
// // // // // // const SizedBox(height: 20),
// // // // // // Image.asset(
// // // // // //   'assets/images/normal.png', // مسار الصورة الثابتة
// // // // // //   height: 150,
// // // // // //   width: double.infinity,
// // // // // //   fit: BoxFit.cover,
// // // // // // ),

// // // // // //                 const SizedBox(height: 20),
// // // // // //                 widget.imageUrl.isNotEmpty
// // // // // //                     ? _buildImageBox(context)
// // // // // //                     : const Center(child: Text("No image available")),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Text(
// // // // // //                   "WARNING: ${widget.predictionResult.isNotEmpty ? widget.predictionResult : 'No Prediction'}",
// // // // // //                   style: const TextStyle(
// // // // // //                     fontSize: 20,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                     color: Colors.red,
// // // // // //                   ),
// // // // // //                 ),

// // // // // //            const SizedBox(height: 10), // إضافة فراغ بين النصوص
// // // // // // const Text(
// // // // // //   "Area A",
// // // // // //   style: TextStyle(
// // // // // //     fontSize: 18,
// // // // // //     fontWeight: FontWeight.bold,
// // // // // //     color: Colors.blue,
// // // // // //   ),
// // // // // // ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () async {
// // // // // //                     await _updateStatusInFirestore();
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     '     Update Status     ',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 10),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.push(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(
// // // // // //                         builder: (context) => InstructionPage(),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Display Instructions',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.pushAndRemoveUntil(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(builder: (context) => MainScreen()),
// // // // // //                       (Route<dynamic> route) => false,
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Done',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: const Color.fromARGB(255, 68, 120, 130),
// // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // //                         horizontal: 50, vertical: 15),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildImageBox(BuildContext context) {
// // // // // //     return Container(
// // // // // //       padding: const EdgeInsets.all(16),
// // // // // //       decoration: BoxDecoration(
// // // // // //         color: Colors.grey[200],
// // // // // //         borderRadius: BorderRadius.circular(20),
// // // // // //         boxShadow: [
// // // // // //           BoxShadow(
// // // // // //             color: Colors.grey.withOpacity(0.5),
// // // // // //             spreadRadius: 5,
// // // // // //             blurRadius: 7,
// // // // // //             offset: const Offset(0, 3),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //       child: Column(
// // // // // //         children: [
// // // // // //           ClipRRect(
// // // // // //             borderRadius: BorderRadius.circular(15),
// // // // // //             child: CachedNetworkImage(
// // // // // //               imageUrl: widget.imageUrl,
// // // // // //               height: 150,
// // // // // //               width: double.infinity,
// // // // // //               fit: BoxFit.cover,
// // // // // //               placeholder: (context, url) => const CircularProgressIndicator(),
// // // // // //               errorWidget: (context, url, error) => Container(
// // // // // //                 height: 150,
// // // // // //                 width: double.infinity,
// // // // // //                 color: Colors.grey,
// // // // // //                 child: const Center(child: Text("Image not available")),
// // // // // //               ),
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }



// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // import 'package:cached_network_image/cached_network_image.dart';
// // // // // // import 'instructionPage.dart';

// // // // // // class Alerts extends StatefulWidget {
// // // // // //   final String imageUrl;
// // // // // //   final String predictionResult;

// // // // // //   const Alerts(
// // // // // //       {Key? key, required this.imageUrl, required this.predictionResult})
// // // // // //       : super(key: key);

// // // // // //   @override
// // // // // //   _AlertsState createState() => _AlertsState();
// // // // // // }

// // // // // // class _AlertsState extends State<Alerts> {
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _loadSavedData();
// // // // // //     _saveInitialDataToFirestore();
// // // // // //   }

// // // // // //   Future<void> _loadSavedData() async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     setState(() {
// // // // // //       imagePath = widget.imageUrl;
// // // // // //       predictionResult = widget.predictionResult;
// // // // // //     });
// // // // // //   }

// // // // // //   Future<void> _saveInitialDataToFirestore() async {
// // // // // //     if (widget.imageUrl.isNotEmpty && widget.predictionResult.isNotEmpty) {
// // // // // //       try {
// // // // // //         await FirebaseFirestore.instance.collection('History').add({
// // // // // //           'imageUrl': widget.imageUrl,
// // // // // //           'normalImage': 'assets/images/normal.png', // إضافة مسار الصورة الثابتة
// // // // // //           'predictionResult': widget.predictionResult,
// // // // // //           'status': 'In Progress',
// // // // // //           'timestamp': Timestamp.now(),
// // // // // //         });
// // // // // //         print("Initial data saved to Firestore");
// // // // // //       } catch (e) {
// // // // // //         print("Error saving initial data to Firestore: $e");
// // // // // //       }
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _updateStatusInFirestore() async {
// // // // // //     try {
// // // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // // //         'imageUrl': widget.imageUrl,
// // // // // //         'predictionResult': widget.predictionResult,
// // // // // //         'status': 'Updated',
// // // // // //         'timestamp': Timestamp.now(),
// // // // // //       });
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Status Updated and sent to History!')),
// // // // // //       );
// // // // // //     } catch (e) {
// // // // // //       print("Error updating Firestore: $e");
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Error updating status.')),
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // //   Widget _buildImageBoxWithGesture(BuildContext context, String imagePath, bool isAsset) {
// // // // // //     return GestureDetector(
// // // // // //       onTap: () {
// // // // // //         showDialog(
// // // // // //           context: context,
// // // // // //           builder: (context) => Dialog(
// // // // // //             child: ClipRRect(
// // // // // //               borderRadius: BorderRadius.circular(12),
// // // // // //               child: isAsset
// // // // // //                   ? Image.asset(imagePath, fit: BoxFit.cover)
// // // // // //                   : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
// // // // // //             ),
// // // // // //           ),
// // // // // //         );
// // // // // //       },
// // // // // //       child: Container(
// // // // // //         padding: const EdgeInsets.all(16),
// // // // // //         decoration: BoxDecoration(
// // // // // //           color: Colors.grey[200],
// // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // //           boxShadow: [
// // // // // //             BoxShadow(
// // // // // //               color: Colors.grey.withOpacity(0.5),
// // // // // //               spreadRadius: 5,
// // // // // //               blurRadius: 7,
// // // // // //               offset: const Offset(0, 3),
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //         child: ClipRRect(
// // // // // //           borderRadius: BorderRadius.circular(15),
// // // // // //           child: isAsset
// // // // // //               ? Image.asset(
// // // // // //                   imagePath,
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 )
// // // // // //               : CachedNetworkImage(
// // // // // //                   imageUrl: imagePath,
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                   placeholder: (context, url) => const CircularProgressIndicator(),
// // // // // //                   errorWidget: (context, url, error) => Container(
// // // // // //                     height: 150,
// // // // // //                     width: double.infinity,
// // // // // //                     color: Colors.grey,
// // // // // //                     child: const Center(child: Text("Image not available")),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: AppBar(
// // // // // //           title: const Text("Alerts"),
// // // // // //           leading: IconButton(
// // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // //             onPressed: () {
// // // // // //               Navigator.pop(context);
// // // // // //             },
// // // // // //           ),
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 1,
// // // // // //           centerTitle: true,
// // // // // //           titleTextStyle: const TextStyle(
// // // // // //             color: Colors.black,
// // // // // //             fontSize: 20,
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: SingleChildScrollView(
// // // // // //           child: Padding(
// // // // // //             padding: const EdgeInsets.all(16.0),
// // // // // //             child: Column(
// // // // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // // // //               children: [
// // // // // //                 Image.asset(
// // // // // //                   'assets/images/Alert.png',
// // // // // //                   height: 200,
// // // // // //                   width: 200,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 1),
// // // // // //                 const Center(
// // // // // //                   child: Text(
// // // // // //                     "Gas Leak has been occurred",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 22,
// // // // // //                       color: Colors.red,
// // // // // //                       fontWeight: FontWeight.w800,
// // // // // //                     ),
// // // // // //                     textAlign: TextAlign.center,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Align(
// // // // // //                   alignment: Alignment.centerLeft,
// // // // // //                   child: const Text(
// // // // // //                     "Thermal Image",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 18,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 widget.imageUrl.isNotEmpty
// // // // // //                     ? _buildImageBoxWithGesture(context, widget.imageUrl, false)
// // // // // //                     : const Center(child: Text("No image available")),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Align(
// // // // // //                   alignment: Alignment.centerLeft,
// // // // // //                   child: const Text(
// // // // // //                     "Normal Image",
// // // // // //                     style: TextStyle(
// // // // // //                       fontSize: 18,
// // // // // //                       fontWeight: FontWeight.bold,
// // // // // //                       color: Color.fromARGB(255, 85, 85, 85),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 _buildImageBoxWithGesture(context, 'assets/images/normal.png', true),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 Text(
// // // // // //                   "WARNING: ${widget.predictionResult.isNotEmpty ? widget.predictionResult : 'No Prediction'}",
// // // // // //                   style: const TextStyle(
// // // // // //                     fontSize: 20,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                     color: Colors.red,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 10),
// // // // // //                 const Text(
// // // // // //                   "Area A",
// // // // // //                   style: TextStyle(
// // // // // //                     fontSize: 18,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                     color: Colors.blue,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () async {
// // // // // //                     await _updateStatusInFirestore();
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     '     Update Status     ',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 10),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.push(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(
// // // // // //                         builder: (context) => InstructionPage(),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Display Instructions',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: Colors.blue,
// // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 const SizedBox(height: 20),
// // // // // //                 ElevatedButton(
// // // // // //                   onPressed: () {
// // // // // //                     Navigator.pushAndRemoveUntil(
// // // // // //                       context,
// // // // // //                       MaterialPageRoute(builder: (context) => MainScreen()),
// // // // // //                       (Route<dynamic> route) => false,
// // // // // //                     );
// // // // // //                   },
// // // // // //                   child: const Text(
// // // // // //                     'Done',
// // // // // //                     style: TextStyle(color: Colors.white),
// // // // // //                   ),
// // // // // //                   style: ElevatedButton.styleFrom(
// // // // // //                     backgroundColor: const Color.fromARGB(255, 68, 120, 130),
// // // // // //                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // // // //                     shape: RoundedRectangleBorder(
// // // // // //                       borderRadius: BorderRadius.circular(20),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // // import 'package:cached_network_image/cached_network_image.dart';
// // // // // // import 'instructionPage.dart';

// // // // // // class Alerts extends StatefulWidget {
// // // // // //   final String imageUrl;
// // // // // //   final String predictionResult;

// // // // // //   const Alerts(
// // // // // //       {Key? key, required this.imageUrl, required this.predictionResult})
// // // // // //       : super(key: key);

// // // // // //   @override
// // // // // //   _AlertsState createState() => _AlertsState();
// // // // // // }

// // // // // // class _AlertsState extends State<Alerts> {
// // // // // //   String? imagePath;
// // // // // //   String? predictionResult;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _loadSavedData();
// // // // // //     _saveInitialDataToFirestore();
// // // // // //   }

// // // // // //   Future<void> _loadSavedData() async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     setState(() {
// // // // // //       imagePath = widget.imageUrl;
// // // // // //       predictionResult = widget.predictionResult;
// // // // // //     });
// // // // // //   }

// // // // // //   Future<void> _saveInitialDataToFirestore() async {
// // // // // //     if (widget.imageUrl.isNotEmpty && widget.predictionResult.isNotEmpty) {
// // // // // //       try {
// // // // // //         await FirebaseFirestore.instance.collection('History').add({
// // // // // //           'imageUrl': widget.imageUrl,
// // // // // //           'normalImage': 'assets/images/normal.png', // إضافة مسار الصورة الثابتة
// // // // // //           'predictionResult': widget.predictionResult,
// // // // // //           'status': 'In Progress',
// // // // // //           'timestamp': Timestamp.now(),
// // // // // //         });
// // // // // //         print("Initial data saved to Firestore");
// // // // // //       } catch (e) {
// // // // // //         print("Error saving initial data to Firestore: $e");
// // // // // //       }
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _updateStatusInFirestore(String docId) async {
// // // // // //     try {
// // // // // //       await FirebaseFirestore.instance.collection('History').doc(docId).update({
// // // // // //         'status': 'Updated',
// // // // // //       });
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Status Updated to "Updated"!')),
// // // // // //       );
// // // // // //     } catch (e) {
// // // // // //       print("Error updating Firestore: $e");
// // // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // // //         const SnackBar(content: Text('Error updating status.')),
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // //   Widget _buildImageBoxWithGesture(BuildContext context, String imagePath, bool isAsset) {
// // // // // //     return GestureDetector(
// // // // // //       onTap: () {
// // // // // //         showDialog(
// // // // // //           context: context,
// // // // // //           builder: (context) => Dialog(
// // // // // //             child: ClipRRect(
// // // // // //               borderRadius: BorderRadius.circular(12),
// // // // // //               child: isAsset
// // // // // //                   ? Image.asset(imagePath, fit: BoxFit.cover)
// // // // // //                   : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
// // // // // //             ),
// // // // // //           ),
// // // // // //         );
// // // // // //       },
// // // // // //       child: Container(
// // // // // //         padding: const EdgeInsets.all(16),
// // // // // //         decoration: BoxDecoration(
// // // // // //           color: Colors.grey[200],
// // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // //           boxShadow: [
// // // // // //             BoxShadow(
// // // // // //               color: Colors.grey.withOpacity(0.5),
// // // // // //               spreadRadius: 5,
// // // // // //               blurRadius: 7,
// // // // // //               offset: const Offset(0, 3),
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //         child: ClipRRect(
// // // // // //           borderRadius: BorderRadius.circular(15),
// // // // // //           child: isAsset
// // // // // //               ? Image.asset(
// // // // // //                   imagePath,
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                 )
// // // // // //               : CachedNetworkImage(
// // // // // //                   imageUrl: imagePath,
// // // // // //                   height: 150,
// // // // // //                   width: double.infinity,
// // // // // //                   fit: BoxFit.cover,
// // // // // //                   placeholder: (context, url) => const CircularProgressIndicator(),
// // // // // //                   errorWidget: (context, url, error) => Container(
// // // // // //                     height: 150,
// // // // // //                     width: double.infinity,
// // // // // //                     color: Colors.grey,
// // // // // //                     child: const Center(child: Text("Image not available")),
// // // // // //                   ),
// // // // // //                 ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return SafeArea(
// // // // // //       child: Scaffold(
// // // // // //         appBar: AppBar(
// // // // // //           title: const Text("Alerts"),
// // // // // //           leading: IconButton(
// // // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // // //             onPressed: () {
// // // // // //               Navigator.pop(context);
// // // // // //             },
// // // // // //           ),
// // // // // //           backgroundColor: Colors.white,
// // // // // //           elevation: 1,
// // // // // //           centerTitle: true,
// // // // // //           titleTextStyle: const TextStyle(
// // // // // //             color: Colors.black,
// // // // // //             fontSize: 20,
// // // // // //             fontWeight: FontWeight.bold,
// // // // // //           ),
// // // // // //         ),
// // // // // //         body: StreamBuilder<QuerySnapshot>(
// // // // // //           stream: FirebaseFirestore.instance
// // // // // //               .collection('History')
// // // // // //               .where('status', isEqualTo: 'In Progress')
// // // // // //               .snapshots(),
// // // // // //           builder: (context, snapshot) {
// // // // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // // // //               return const Center(child: CircularProgressIndicator());
// // // // // //             }
// // // // // //             if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// // // // // //               return const Center(
// // // // // //                 child: Text(
// // // // // //                   'No "In Progress" items found.',
// // // // // //                   style: TextStyle(color: Colors.grey, fontSize: 16),
// // // // // //                 ),
// // // // // //               );
// // // // // //             }

// // // // // //             final documents = snapshot.data!.docs;

// // // // // //             return ListView.builder(
// // // // // //               itemCount: documents.length,
// // // // // //               itemBuilder: (context, index) {
// // // // // //                 final item = documents[index].data() as Map<String, dynamic>;
// // // // // //                 final docId = documents[index].id;
// // // // // //                 final imageUrl = item['imageUrl'] ?? '';
// // // // // //                 final normalImage = item['normalImage'] ?? 'assets/images/normal.png';
// // // // // //                 final predictionResult = item['predictionResult'] ?? 'No Prediction';

// // // // // //                 return Padding(
// // // // // //                   padding: const EdgeInsets.all(16.0),
// // // // // //                   child: Column(
// // // // // //                     crossAxisAlignment: CrossAxisAlignment.center,
// // // // // //                     children: [
// // // // // //                       if (imageUrl.isNotEmpty)
// // // // // //                         _buildImageBoxWithGesture(context, imageUrl, false),
// // // // // //                       const SizedBox(height: 20),
// // // // // //                       if (normalImage.isNotEmpty)
// // // // // //                         _buildImageBoxWithGesture(context, normalImage, true),
// // // // // //                       const SizedBox(height: 20),
// // // // // //                       Text(
// // // // // //                         "Prediction Result: $predictionResult",
// // // // // //                         style: const TextStyle(
// // // // // //                           fontSize: 20,
// // // // // //                           fontWeight: FontWeight.bold,
// // // // // //                           color: Colors.red,
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                       const SizedBox(height: 10),
// // // // // //                       const Text(
// // // // // //                         "Area A",
// // // // // //                         style: TextStyle(
// // // // // //                           fontSize: 18,
// // // // // //                           fontWeight: FontWeight.bold,
// // // // // //                           color: Colors.blue,
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                       const SizedBox(height: 20),
// // // // // //                       ElevatedButton(
// // // // // //                         onPressed: () async {
// // // // // //                           await _updateStatusInFirestore(docId);
// // // // // //                         },
// // // // // //                         child: const Text(
// // // // // //                           '     Update Status     ',
// // // // // //                           style: TextStyle(color: Colors.white),
// // // // // //                         ),
// // // // // //                         style: ElevatedButton.styleFrom(
// // // // // //                           backgroundColor: Colors.blue,
// // // // // //                           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// // // // // //                           shape: RoundedRectangleBorder(
// // // // // //                             borderRadius: BorderRadius.circular(20),
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                 );
// // // // // //               },
// // // // // //             );
// // // // // //           },
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // // // import 'package:cached_network_image/cached_network_image.dart';
// // // // // import 'instructionPage.dart';

// // // // // class Alerts extends StatefulWidget {
// // // // //   final String imageUrl;
// // // // //   final String predictionResult;

// // // // //   const Alerts(
// // // // //       {Key? key, required this.imageUrl, required this.predictionResult})
// // // // //       : super(key: key);

// // // // //   @override
// // // // //   _AlertsState createState() => _AlertsState();
// // // // // }

// // // // // class _AlertsState extends State<Alerts> {
// // // // //   String? imagePath;
// // // // //   String? predictionResult;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _loadSavedData();
// // // // //     _saveInitialDataToFirestore();
// // // // //   }

// // // // //   Future<void> _loadSavedData() async {
// // // // //     final prefs = await SharedPreferences.getInstance();
// // // // //     setState(() {
// // // // //       imagePath = widget.imageUrl;
// // // // //       predictionResult = widget.predictionResult;
// // // // //     });
// // // // //   }

// // // // //   Future<void> _saveInitialDataToFirestore() async {
// // // // //     if (widget.imageUrl.isNotEmpty && widget.predictionResult.isNotEmpty) {
// // // // //       try {
// // // // //         await FirebaseFirestore.instance.collection('History').add({
// // // // //           'imageUrl': widget.imageUrl,
// // // // //           'normalImage': 'assets/images/normal.png', // إضافة مسار الصورة الثابتة
// // // // //           'predictionResult': widget.predictionResult,
// // // // //           'status': 'In Progress',
// // // // //           'timestamp': Timestamp.now(),
// // // // //         });
// // // // //         print("Initial data saved to Firestore");
// // // // //       } catch (e) {
// // // // //         print("Error saving initial data to Firestore: $e");
// // // // //       }
// // // // //     }
// // // // //   }


// // // // // Future<void> _updateStatusInFirestore(String docId) async {
// // // // //   try {
// // // // //     await FirebaseFirestore.instance.collection('History').doc(docId).update({
// // // // //       'status': 'Updated',
// // // // //     });
// // // // //     ScaffoldMessenger.of(context).showSnackBar(
// // // // //       SnackBar(
// // // // //         content: const Text(
// // // // //           'Status Updated Successfully!',
// // // // //           style: TextStyle(color: Colors.white), // النص باللون الأبيض
// // // // //         ),
// // // // //         backgroundColor: Colors.green, // تغيير الخلفية إلى اللون الأخضر
// // // // //         behavior: SnackBarBehavior.floating,
// // // // //         margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // ضبط الهامش لضمان التصميم المحكم
// // // // //         shape: RoundedRectangleBorder(
// // // // //           borderRadius: BorderRadius.circular(8), // زوايا دائرية مشابهة للتصميم الأصلي
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   } catch (e) {
// // // // //     print("Error updating Firestore: $e");
// // // // //     ScaffoldMessenger.of(context).showSnackBar(
// // // // //       const SnackBar(content: Text('Error updating status.')),
// // // // //     );
// // // // //   }
// // // // // }



// // // // //   Widget _buildImageBoxWithGesture(BuildContext context, String imagePath, bool isAsset) {
// // // // //     return GestureDetector(
// // // // //       onTap: () {
// // // // //         showDialog(
// // // // //           context: context,
// // // // //           builder: (context) => Dialog(
// // // // //             child: ClipRRect(
// // // // //               borderRadius: BorderRadius.circular(12),
// // // // //               child: isAsset
// // // // //                   ? Image.asset(imagePath, fit: BoxFit.cover)
// // // // //                   : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
// // // // //             ),
// // // // //           ),
// // // // //         );
// // // // //       },
// // // // //       child: Container(
// // // // //         padding: const EdgeInsets.all(16),
// // // // //         decoration: BoxDecoration(
// // // // //           color: Colors.grey[200],
// // // // //           borderRadius: BorderRadius.circular(20),
// // // // //           boxShadow: [
// // // // //             BoxShadow(
// // // // //               color: Colors.grey.withOpacity(0.5),
// // // // //               spreadRadius: 5,
// // // // //               blurRadius: 7,
// // // // //               offset: const Offset(0, 3),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //         child: ClipRRect(
// // // // //           borderRadius: BorderRadius.circular(15),
// // // // //           child: isAsset
// // // // //               ? Image.asset(
// // // // //                   imagePath,
// // // // //                   height: 150,
// // // // //                   width: double.infinity,
// // // // //                   fit: BoxFit.cover,
// // // // //                 )
// // // // //               : CachedNetworkImage(
// // // // //                   imageUrl: imagePath,
// // // // //                   height: 150,
// // // // //                   width: double.infinity,
// // // // //                   fit: BoxFit.cover,
// // // // //                   placeholder: (context, url) => const CircularProgressIndicator(),
// // // // //                   errorWidget: (context, url, error) => Container(
// // // // //                     height: 150,
// // // // //                     width: double.infinity,
// // // // //                     color: Colors.grey,
// // // // //                     child: const Center(child: Text("Image not available")),
// // // // //                   ),
// // // // //                 ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return SafeArea(
// // // // //       child: Scaffold(
// // // // //         appBar: AppBar(
// // // // //           title: const Text("Alerts"),
// // // // //           leading: IconButton(
// // // // //             icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // //             onPressed: () {
// // // // //               Navigator.pop(context);
// // // // //             },
// // // // //           ),
// // // // //           backgroundColor: Colors.white,
// // // // //           elevation: 1,
// // // // //           centerTitle: true,
// // // // //           titleTextStyle: const TextStyle(
// // // // //             color: Colors.black,
// // // // //             fontSize: 20,
// // // // //             fontWeight: FontWeight.bold,
// // // // //           ),
// // // // //         ),
// // // // //         body: StreamBuilder<QuerySnapshot>(
// // // // //           stream: FirebaseFirestore.instance
// // // // //               .collection('History')
// // // // //               .where('status', isEqualTo: 'In Progress')
// // // // //               .snapshots(),
// // // // //           builder: (context, snapshot) {
// // // // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // // // //               return const Center(child: CircularProgressIndicator());
// // // // //             }
// // // // //             if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// // // // //               return const Center(
// // // // //                 child: Text(
// // // // //                   'No Alert have a nice day',
// // // // //                   style: TextStyle(color: Colors.grey, fontSize: 16),
// // // // //                 ),
// // // // //               );
// // // // //             }

// // // // //             final documents = snapshot.data!.docs;

// // // // //             return ListView.builder(
// // // // //               padding: const EdgeInsets.all(16),
// // // // //               itemCount: documents.length,
// // // // //               itemBuilder: (context, index) {
// // // // //                 final item = documents[index].data() as Map<String, dynamic>;
// // // // //                 final docId = documents[index].id;
// // // // //                 final imageUrl = item['imageUrl'] ?? '';
// // // // //                 final normalImage = item['normalImage'] ?? 'assets/images/normal.png';
// // // // //                 final predictionResult = item['predictionResult'] ?? 'No Prediction';

// // // // //                 return Padding(
// // // // //                   padding: const EdgeInsets.symmetric(vertical: 8.0),
// // // // //                   child: Card(
// // // // //                     elevation: 3,
// // // // //                     shape: RoundedRectangleBorder(
// // // // //                       borderRadius: BorderRadius.circular(12),
// // // // //                     ),
// // // // //                     child: Padding(
// // // // //                       padding: const EdgeInsets.all(16.0),
// // // // //                       child: Column(
// // // // //                         crossAxisAlignment: CrossAxisAlignment.center,
// // // // //                         children: [
// // // // //                           if (imageUrl.isNotEmpty)
// // // // //                             _buildImageBoxWithGesture(context, imageUrl, false),
// // // // //                           const SizedBox(height: 20),
// // // // //                           if (normalImage.isNotEmpty)
// // // // //                             _buildImageBoxWithGesture(context, normalImage, true),
// // // // //                           const SizedBox(height: 20),
// // // // //                           Text(
// // // // //                             "Warning: $predictionResult",
// // // // //                             style: const TextStyle(
// // // // //                               fontSize: 20,
// // // // //                               fontWeight: FontWeight.bold,
// // // // //                               color: Colors.red,
// // // // //                             ),
// // // // //                           ),
// // // // //                           const SizedBox(height: 10),
// // // // //                           const Text(
// // // // //                             "Area A",
// // // // //                             style: TextStyle(
// // // // //                               fontSize: 18,
// // // // //                               fontWeight: FontWeight.bold,
// // // // //                               color: Colors.blue,
// // // // //                             ),
// // // // //                           ),
// // // // //                           const SizedBox(height: 20),
// // // // //                           ElevatedButton(
// // // // //                             onPressed: () async {
// // // // //                               await _updateStatusInFirestore(docId);
// // // // //                             },
// // // // //                             child: const Text(
// // // // //                               '     Update Status     ',
// // // // //                               style: TextStyle(color: Colors.white),
// // // // //                             ),
// // // // //                             style: ElevatedButton.styleFrom(
// // // // //                               backgroundColor: Colors.blue,
// // // // //                               padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// // // // //                               shape: RoundedRectangleBorder(
// // // // //                                 borderRadius: BorderRadius.circular(20),
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                           const SizedBox(height: 10),
// // // // //                           ElevatedButton(
// // // // //                             onPressed: () {
// // // // //                               Navigator.push(
// // // // //                                 context,
// // // // //                                 MaterialPageRoute(
// // // // //                                   builder: (context) => InstructionPage(),
// // // // //                                 ),
// // // // //                               );
// // // // //                             },
// // // // //                             child: const Text(
// // // // //                               'Display Instructions',
// // // // //                               style: TextStyle(color: Colors.white),
// // // // //                             ),
// // // // //                             style: ElevatedButton.styleFrom(
// // // // //                               backgroundColor: Colors.blue,
// // // // //                               padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// // // // //                               shape: RoundedRectangleBorder(
// // // // //                                 borderRadius: BorderRadius.circular(20),
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                           // const SizedBox(height: 20),
// // // // //                           // ElevatedButton(
// // // // //                           //   onPressed: () {
// // // // //                           //     Navigator.pushAndRemoveUntil(
// // // // //                           //       context,
// // // // //                           //       MaterialPageRoute(builder: (context) => MainScreen()\),
// // // // //                           //       (Route<dynamic> route) => false,
// // // // //                           //     );
// // // // //                           //   },
// // // // //                           //   child: const Text(
// // // // //                           //     'Done',
// // // // //                           //     style: TextStyle(color: Colors.white),
// // // // //                           //   ),
// // // // //                           //   style: ElevatedButton.styleFrom(
// // // // //                           //     backgroundColor: const Color.fromARGB(255, 68, 120, 130),
// // // // //                           //     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // // //                           //     shape: RoundedRectangleBorder(
// // // // //                           //       borderRadius: BorderRadius.circular(20),
// // // // //                           //     ),
// // // // //                           //   ),
// // // // //                           // ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 );
// // // // //               },
// // // // //             );
// // // // //           },
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }



// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // import 'package:cached_network_image/cached_network_image.dart';
// // // import 'instructionPage.dart';

// // // class Alerts extends StatefulWidget {
// // //   final String imageUrl;
// // //   final String predictionResult;

// // //   const Alerts(
// // //       {Key? key, required this.imageUrl, required this.predictionResult})
// // //       : super(key: key);

// // //   @override
// // //   _AlertsState createState() => _AlertsState();
// // // }

// // // class _AlertsState extends State<Alerts> {
// // //   String? imagePath;
// // //   String? predictionResult;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _loadSavedData();
// // //     _saveInitialDataToFirestore();
// // //   }

// // //   Future<void> _loadSavedData() async {
// // //     final prefs = await SharedPreferences.getInstance();
// // //     setState(() {
// // //       imagePath = widget.imageUrl;
// // //       predictionResult = widget.predictionResult;
// // //     });
// // //   }

// // //   Future<void> _saveInitialDataToFirestore() async {
// // //     if (widget.imageUrl.isNotEmpty && widget.predictionResult.isNotEmpty) {
// // //       try {
// // //         await FirebaseFirestore.instance.collection('History').add({
// // //           'imageUrl': widget.imageUrl,
// // //           'normalImage': 'assets/images/normal.png', // إضافة مسار الصورة الثابتة
// // //           'predictionResult': widget.predictionResult,
// // //           'status': 'In Progress',
// // //           'timestamp': Timestamp.now(),
// // //         });
// // //         print("Initial data saved to Firestore");
// // //       } catch (e) {
// // //         print("Error saving initial data to Firestore: $e");
// // //       }
// // //     }
// // //   }

// // //   Future<void> _updateStatusInFirestore(String docId) async {
// // //     try {
// // //       await FirebaseFirestore.instance.collection('History').doc(docId).update({
// // //         'status': 'Updated',
// // //       });
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(
// // //           content: const Text(
// // //             'Status Updated Successfully!',
// // //             style: TextStyle(color: Colors.white),
// // //           ),
// // //           backgroundColor: Colors.green,
// // //           behavior: SnackBarBehavior.floating,
// // //           margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// // //           shape: RoundedRectangleBorder(
// // //             borderRadius: BorderRadius.circular(8),
// // //           ),
// // //         ),
// // //       );
// // //     } catch (e) {
// // //       print("Error updating Firestore: $e");
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(content: Text('Error updating status.')),
// // //       );
// // //     }
// // //   }

// // //   Widget _buildImageBoxWithGesture(BuildContext context, String imagePath, bool isAsset) {
// // //     return GestureDetector(
// // //       onTap: () {
// // //         showDialog(
// // //           context: context,
// // //           builder: (context) => Dialog(
// // //             child: ClipRRect(
// // //               borderRadius: BorderRadius.circular(12),
// // //               child: isAsset
// // //                   ? Image.asset(imagePath, fit: BoxFit.cover)
// // //                   : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
// // //             ),
// // //           ),
// // //         );
// // //       },
// // //       child: Container(
// // //         padding: const EdgeInsets.all(16),
// // //         decoration: BoxDecoration(
// // //           color: Colors.grey[200],
// // //           borderRadius: BorderRadius.circular(20),
// // //           boxShadow: [
// // //             BoxShadow(
// // //               color: Colors.grey.withOpacity(0.5),
// // //               spreadRadius: 5,
// // //               blurRadius: 7,
// // //               offset: const Offset(0, 3),
// // //             ),
// // //           ],
// // //         ),
// // //         child: ClipRRect(
// // //           borderRadius: BorderRadius.circular(15),
// // //           child: isAsset
// // //               ? Image.asset(
// // //                   imagePath,
// // //                   height: 150,
// // //                   width: double.infinity,
// // //                   fit: BoxFit.cover,
// // //                 )
// // //               : CachedNetworkImage(
// // //                   imageUrl: imagePath,
// // //                   height: 150,
// // //                   width: double.infinity,
// // //                   fit: BoxFit.cover,
// // //                   placeholder: (context, url) => const CircularProgressIndicator(),
// // //                   errorWidget: (context, url, error) => Container(
// // //                     height: 150,
// // //                     width: double.infinity,
// // //                     color: Colors.grey,
// // //                     child: const Center(child: Text("Image not available")),
// // //                   ),
// // //                 ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         appBar: AppBar(
// // //           title: const Text("Alerts"),
// // //           backgroundColor: Colors.white,
// // //           elevation: 1,
// // //           centerTitle: true,
// // //           titleTextStyle: const TextStyle(
// // //             color: Colors.black,
// // //             fontSize: 20,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         body: StreamBuilder<QuerySnapshot>(
// // //           stream: FirebaseFirestore.instance
// // //               .collection('History')
// // //               .where('status', isEqualTo: 'In Progress')
// // //               .snapshots(),
// // //           builder: (context, snapshot) {
// // //             if (snapshot.connectionState == ConnectionState.waiting) {
// // //               return const Center(child: CircularProgressIndicator());
// // //             }
// // //             if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// // //               return const Center(
// // //                 child: Text(
// // //                   'No Alert have a nice day',
// // //                   style: TextStyle(color: Colors.grey, fontSize: 16),
// // //                 ),
// // //               );
// // //             }

// // //             final documents = snapshot.data!.docs;

// // //             return ListView.builder(
// // //               padding: const EdgeInsets.all(16),
// // //               itemCount: documents.length,
// // //               itemBuilder: (context, index) {
// // //                 final item = documents[index].data() as Map<String, dynamic>;
// // //                 final docId = documents[index].id;
// // //                 final imageUrl = item['imageUrl'] ?? '';
// // //                 final normalImage = item['normalImage'] ?? 'assets/images/normal.png';
// // //                 final predictionResult = item['predictionResult'] ?? 'No Prediction';

// // //                 return Padding(
// // //                   padding: const EdgeInsets.symmetric(vertical: 8.0),
// // //                   child: Card(
// // //                     elevation: 3,
// // //                     shape: RoundedRectangleBorder(
// // //                       borderRadius: BorderRadius.circular(12),
// // //                     ),
// // //                     child: Padding(
// // //                       padding: const EdgeInsets.all(16.0),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.center,
// // //                         children: [
// // //                           if (imageUrl.isNotEmpty)
// // //                             _buildImageBoxWithGesture(context, imageUrl, false),
// // //                           const SizedBox(height: 20),
// // //                           if (normalImage.isNotEmpty)
// // //                             _buildImageBoxWithGesture(context, normalImage, true),
// // //                           const SizedBox(height: 20),
// // //                           Text(
// // //                             "Warning: $predictionResult",
// // //                             style: const TextStyle(
// // //                               fontSize: 20,
// // //                               fontWeight: FontWeight.bold,
// // //                               color: Colors.red,
// // //                             ),
// // //                           ),
// // //                           const SizedBox(height: 10),
// // //                           const Text(
// // //                             "Area A",
// // //                             style: TextStyle(
// // //                               fontSize: 18,
// // //                               fontWeight: FontWeight.bold,
// // //                               color: Colors.blue,
// // //                             ),
// // //                           ),
// // //                           const SizedBox(height: 20),
// // //                           ElevatedButton(
// // //                             onPressed: () async {
// // //                               await _updateStatusInFirestore(docId);
// // //                             },
// // //                             child: const Text(
// // //                               '     Update Status     ',
// // //                               style: TextStyle(color: Colors.white),
// // //                             ),
// // //                             style: ElevatedButton.styleFrom(
// // //                               backgroundColor: Colors.blue,
// // //                               padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// // //                               shape: RoundedRectangleBorder(
// // //                                 borderRadius: BorderRadius.circular(20),
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           const SizedBox(height: 10),
// // //                           ElevatedButton(
// // //                             onPressed: () {
// // //                               Navigator.push(
// // //                                 context,
// // //                                 MaterialPageRoute(
// // //                                   builder: (context) => InstructionPage(),
// // //                                 ),
// // //                               );
// // //                             },
// // //                             child: const Text(
// // //                               'Display Instructions',
// // //                               style: TextStyle(color: Colors.white),
// // //                             ),
// // //                             style: ElevatedButton.styleFrom(
// // //                               backgroundColor: Colors.blue,
// // //                               padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// // //                               shape: RoundedRectangleBorder(
// // //                                 borderRadius: BorderRadius.circular(20),
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //             );
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // import 'package:cached_network_image/cached_network_image.dart';
// // // // import 'instructionPage.dart';

// // // // class Alerts extends StatefulWidget {
// // // //   final String imageUrl;
// // // //   final String predictionResult;

// // // //   const Alerts({
// // // //     Key? key,
// // // //     required this.imageUrl,
// // // //     required this.predictionResult,
// // // //   }) : super(key: key);

// // // //   @override
// // // //   _AlertsState createState() => _AlertsState();
// // // // }

// // // // class _AlertsState extends State<Alerts> {
// // // //   Future<void> _updateStatusInFirestore(String docId) async {
// // // //     try {
// // // //       await FirebaseFirestore.instance.collection('History').doc(docId).update({
// // // //         'status': 'Updated',
// // // //       });
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         SnackBar(
// // // //           content: const Text('Status Updated Successfully!'),
// // // //           backgroundColor: Colors.green,
// // // //         ),
// // // //       );
// // // //     } catch (e) {
// // // //       print("Error updating Firestore: $e");
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         const SnackBar(content: Text('Error updating status.')),
// // // //       );
// // // //     }
// // // //   }

// // // //   Widget _buildImageSection(String imagePath, bool isAsset, String label) {
// // // //     return Column(
// // // //       children: [
// // // //         ClipRRect(
// // // //           borderRadius: BorderRadius.circular(12),
// // // //           child: isAsset
// // // //               ? Image.asset(
// // // //                   imagePath,
// // // //                   height: 180,
// // // //                   width: double.infinity,
// // // //                   fit: BoxFit.cover,
// // // //                 )
// // // //               : CachedNetworkImage(
// // // //                   imageUrl: imagePath,
// // // //                   height: 180,
// // // //                   width: double.infinity,
// // // //                   fit: BoxFit.cover,
// // // //                   placeholder: (context, url) =>
// // // //                       const Center(child: CircularProgressIndicator()),
// // // //                   errorWidget: (context, url, error) => Container(
// // // //                     height: 180,
// // // //                     color: Colors.grey[300],
// // // //                     child: const Center(child: Text("Image not available")),
// // // //                   ),
// // // //                 ),
// // // //         ),
// // // //         const SizedBox(height: 8),
// // // //         Text(
// // // //           label,
// // // //           style: const TextStyle(
// // // //             fontSize: 14,
// // // //             fontWeight: FontWeight.w500,
// // // //           ),
// // // //         ),
// // // //       ],
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Colors.grey[100],
// // // //       appBar: AppBar(
// // // //         title: const Text(
// // // //           "Alert Details",
// // // //           style: TextStyle(fontWeight: FontWeight.bold),
// // // //         ),
// // // //         backgroundColor: Colors.red[400],
// // // //         centerTitle: true,
// // // //         elevation: 0,
// // // //       ),
// // // //       body: StreamBuilder<QuerySnapshot>(
// // // //         stream: FirebaseFirestore.instance
// // // //             .collection('History')
// // // //             .where('status', isEqualTo: 'In Progress')
// // // //             .snapshots(),
// // // //         builder: (context, snapshot) {
// // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // //             return const Center(child: CircularProgressIndicator());
// // // //           }
// // // //           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// // // //             return const Center(
// // // //               child: Text(
// // // //                 'No Alerts at the moment.',
// // // //                 style: TextStyle(color: Colors.grey, fontSize: 16),
// // // //               ),
// // // //             );
// // // //           }

// // // //           final documents = snapshot.data!.docs;

// // // //           return ListView.builder(
// // // //             padding: const EdgeInsets.all(16),
// // // //             itemCount: documents.length,
// // // //             itemBuilder: (context, index) {
// // // //               final item = documents[index].data() as Map<String, dynamic>;
// // // //               final docId = documents[index].id;
// // // //               final imageUrl = item['imageUrl'] ?? '';
// // // //               final normalImage =
// // // //                   item['normalImage'] ?? 'assets/images/normal.png';
// // // //               final predictionResult =
// // // //                   item['predictionResult'] ?? 'No Prediction';

// // // //               return Card(
// // // //                 elevation: 6,
// // // //                 shape: RoundedRectangleBorder(
// // // //                   borderRadius: BorderRadius.circular(15),
// // // //                 ),
// // // //                 margin: const EdgeInsets.symmetric(vertical: 12),
// // // //                 child: Padding(
// // // //                   padding: const EdgeInsets.all(16),
// // // //                   child: Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.stretch,
// // // //                     children: [
// // // //                       Row(
// // // //                         children: [
// // // //                           Icon(
// // // //                             Icons.warning_rounded,
// // // //                             color: Colors.red[700],
// // // //                             size: 40,
// // // //                           ),
// // // //                           const SizedBox(width: 10),
// // // //                           Expanded(
// // // //                             child: Text(
// // // //                               "Warning: $predictionResult",
// // // //                               style: TextStyle(
// // // //                                 fontSize: 18,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                                 color: Colors.red[700],
// // // //                               ),
// // // //                               maxLines: 2,
// // // //                               overflow: TextOverflow.ellipsis,
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                       const SizedBox(height: 16),
// // // //                       if (imageUrl.isNotEmpty)
// // // //                         _buildImageSection(imageUrl, false, "Thermal Image"),
// // // //                       const SizedBox(height: 12),
// // // //                       if (normalImage.isNotEmpty)
// // // //                         _buildImageSection(normalImage, true, "Normal Image"),
// // // //                       const SizedBox(height: 16),
// // // //                       Column(
// // // //                         children: [
// // // //                           ElevatedButton.icon(
// // // //                             onPressed: () async {
// // // //                               await _updateStatusInFirestore(docId);
// // // //                             },
// // // //                             style: ElevatedButton.styleFrom(
// // // //                               backgroundColor: Colors.red[400],
// // // //                               shape: RoundedRectangleBorder(
// // // //                                 borderRadius: BorderRadius.circular(20),
// // // //                               ),
// // // //                             ),
// // // //                             icon: const Icon(Icons.update),
// // // //                             label: const Text("Update Status"),
// // // //                           ),
// // // //                           const SizedBox(height: 8),
// // // //                           ElevatedButton.icon(
// // // //                             onPressed: () {
// // // //                               Navigator.push(
// // // //                                 context,
// // // //                                 MaterialPageRoute(
// // // //                                   builder: (context) => InstructionPage(),
// // // //                                 ),
// // // //                               );
// // // //                             },
// // // //                             style: ElevatedButton.styleFrom(
// // // //                               backgroundColor: Colors.blue[400],
// // // //                               shape: RoundedRectangleBorder(
// // // //                                 borderRadius: BorderRadius.circular(20),
// // // //                               ),
// // // //                             ),
// // // //                             icon: const Icon(Icons.info_outline),
// // // //                             label: const Text("View Instructions"),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               );
// // // //             },
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }
// // // // }





// // // // import 'package:flutter/material.dart';
// // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // import 'package:cached_network_image/cached_network_image.dart';
// // // // import 'instructionPage.dart';

// // // // class Alerts extends StatefulWidget {
// // // //   final String imageUrl;
// // // //   final String predictionResult;

// // // //   const Alerts({
// // // //     Key? key,
// // // //     required this.imageUrl,
// // // //     required this.predictionResult,
// // // //   }) : super(key: key);

// // // //   @override
// // // //   _AlertsState createState() => _AlertsState();
// // // // }

// // // // class _AlertsState extends State<Alerts> {
// // // //   Future<void> _updateStatusInFirestore(String docId) async {
// // // //     try {
// // // //       await FirebaseFirestore.instance.collection('History').doc(docId).update({
// // // //         'status': 'Updated',
// // // //       });
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         SnackBar(
// // // //           content: const Text('Status Updated Successfully!'),
// // // //           backgroundColor: Colors.green,
// // // //         ),
// // // //       );
// // // //     } catch (e) {
// // // //       print("Error updating Firestore: $e");
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         const SnackBar(content: Text('Error updating status.')),
// // // //       );
// // // //     }
// // // //   }

// // // //   void _showFullImage(BuildContext context, String imageUrl) {
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) => Dialog(
// // // //         backgroundColor: Colors.black,
// // // //         child: GestureDetector(
// // // //           onTap: () => Navigator.pop(context), // يغلق النافذة عند الضغط
// // // //           child: CachedNetworkImage(
// // // //             imageUrl: imageUrl,
// // // //             placeholder: (context, url) =>
// // // //                 const Center(child: CircularProgressIndicator()),
// // // //             errorWidget: (context, url, error) => const Icon(
// // // //               Icons.error,
// // // //               size: 50,
// // // //               color: Colors.red,
// // // //             ),
// // // //             fit: BoxFit.contain,
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildImageSection(String imagePath, bool isAsset, String label) {
// // // //     return Column(
// // // //       crossAxisAlignment: CrossAxisAlignment.stretch,
// // // //       children: [
// // // //         Text(
// // // //           label,
// // // //           style: const TextStyle(
// // // //             fontSize: 16,
// // // //             fontWeight: FontWeight.bold,
// // // //             color: Colors.black,
// // // //           ),
// // // //           textAlign: TextAlign.center,
// // // //         ),
// // // //         const SizedBox(height: 8),
// // // //         GestureDetector(
// // // //           onTap: () => _showFullImage(context, imagePath),
// // // //           child: ClipRRect(
// // // //             borderRadius: BorderRadius.circular(12),
// // // //             child: isAsset
// // // //                 ? Image.asset(
// // // //                     imagePath,
// // // //                     height: 180,
// // // //                     width: double.infinity,
// // // //                     fit: BoxFit.cover,
// // // //                   )
// // // //                 : CachedNetworkImage(
// // // //                     imageUrl: imagePath,
// // // //                     height: 180,
// // // //                     width: double.infinity,
// // // //                     fit: BoxFit.cover,
// // // //                     placeholder: (context, url) =>
// // // //                         const Center(child: CircularProgressIndicator()),
// // // //                     errorWidget: (context, url, error) => Container(
// // // //                       height: 180,
// // // //                       color: Colors.grey[300],
// // // //                       child: const Center(child: Text("Image not available")),
// // // //                     ),
// // // //                   ),
// // // //           ),
// // // //         ),
// // // //       ],
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Colors.grey[100],
// // // //       appBar: AppBar(
// // // //         title: const Text(
// // // //           "Alert Details",
// // // //           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
// // // //         ),
// // // //         backgroundColor: Colors.red[400],
// // // //         centerTitle: true,
// // // //         elevation: 0,
// // // //       ),
// // // //       body: StreamBuilder<QuerySnapshot>(
// // // //         stream: FirebaseFirestore.instance
// // // //             .collection('History')
// // // //             .where('status', isEqualTo: 'In Progress')
// // // //             .snapshots(),
// // // //         builder: (context, snapshot) {
// // // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // // //             return const Center(child: CircularProgressIndicator());
// // // //           }
// // // //           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// // // //             return const Center(
// // // //               child: Text(
// // // //                 'No Alerts at the moment.',
// // // //                 style: TextStyle(color: Colors.grey, fontSize: 16),
// // // //               ),
// // // //             );
// // // //           }
          


// // // //           final documents = snapshot.data!.docs;

// // // //           return ListView.builder(
// // // //             padding: const EdgeInsets.all(16),
// // // //             itemCount: documents.length,
// // // //             itemBuilder: (context, index) {
// // // //               final item = documents[index].data() as Map<String, dynamic>;
// // // //               final docId = documents[index].id;
// // // //               final imageUrl = item['imageUrl'] ?? '';
// // // //               final normalImage =
// // // //                   item['normalImage'] ?? 'assets/images/normal.png';
// // // //               final predictionResult =
// // // //                   item['predictionResult'] ?? 'No Prediction';

// // // //               return Card(
// // // //                 elevation: 6,
// // // //                 shape: RoundedRectangleBorder(
// // // //                   borderRadius: BorderRadius.circular(15),
// // // //                 ),
// // // //                 margin: const EdgeInsets.symmetric(vertical: 12),
// // // //                 child: Padding(
// // // //                   padding: const EdgeInsets.all(16),
// // // //                   child: Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.stretch,
// // // //                     children: [
// // // //                       Row(
// // // //                         children: [
// // // //                           Icon(
// // // //                             Icons.warning_rounded,
// // // //                             color: Colors.red[700],
// // // //                             size: 40,
// // // //                           ),
// // // //                           const SizedBox(width: 10),
// // // //                           Expanded(
// // // //                             child: Text(
// // // //                               "Warning: $predictionResult",
// // // //                               style: TextStyle(
// // // //                                 fontSize: 18,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                                 color: Colors.red[700],
// // // //                               ),
// // // //                               maxLines: 2,
// // // //                               overflow: TextOverflow.ellipsis,
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                       const SizedBox(height: 16),
// // // //                       if (imageUrl.isNotEmpty)
// // // //                         _buildImageSection(imageUrl, false, "Thermal Image"),
// // // //                       const SizedBox(height: 12),
// // // //                       if (normalImage.isNotEmpty)
// // // //                         _buildImageSection(normalImage, true, "Normal Image"),
// // // //                       const SizedBox(height: 16),
// // // //                       Column(
// // // //                         children: [
// // // //                           ElevatedButton.icon(
// // // //                             onPressed: () async {
// // // //                               await _updateStatusInFirestore(docId);
// // // //                             },
// // // //                             style: ElevatedButton.styleFrom(
// // // //                               backgroundColor: Colors.red[400],
// // // //                               shape: RoundedRectangleBorder(
// // // //                                 borderRadius: BorderRadius.circular(20),
// // // //                               ),
// // // //                             ),
// // // //                             icon: const Icon(Icons.update, color: Colors.white),
// // // //                             label: const Text(
// // // //                               "Update Status",
// // // //                               style: TextStyle(color: Colors.white),
// // // //                             ),
// // // //                           ),
// // // //                           const SizedBox(height: 8),
// // // //                           ElevatedButton.icon(
// // // //                             onPressed: () {
// // // //                               Navigator.push(
// // // //                                 context,
// // // //                                 MaterialPageRoute(
// // // //                                   builder: (context) => InstructionPage(),
// // // //                                 ),
// // // //                               );
// // // //                             },
// // // //                             style: ElevatedButton.styleFrom(
// // // //                               backgroundColor: Colors.blue[400],
// // // //                               shape: RoundedRectangleBorder(
// // // //                                 borderRadius: BorderRadius.circular(20),
// // // //                               ),
// // // //                             ),
// // // //                             icon:
// // // //                                 const Icon(Icons.info_outline, color: Colors.white),
// // // //                             label: const Text(
// // // //                               "View Instructions",
// // // //                               style: TextStyle(color: Colors.white),
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               );
// // // //             },
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
    
// // // //   }
// // // // }






// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:cached_network_image/cached_network_image.dart';
// // // import 'instructionPage.dart';

// // // class Alerts extends StatefulWidget {
// // //   final String imageUrl;
// // //   final String predictionResult;

// // //   const Alerts({
// // //     Key? key,
// // //     required this.imageUrl,
// // //     required this.predictionResult,
// // //   }) : super(key: key);

// // //   @override
// // //   _AlertsState createState() => _AlertsState();
// // // }

// // // class _AlertsState extends State<Alerts> {
// // //   Future<void> _updateStatusInFirestore(String docId) async {
// // //     try {
// // //       await FirebaseFirestore.instance.collection('History').doc(docId).update({
// // //         'status': 'Updated',
// // //       });
// // //       // إظهار Snackbar عند نجاح التحديث
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(
// // //           content: Row(
// // //             children: [
// // //               const Icon(Icons.check_circle, color: Colors.white),
// // //               const SizedBox(width: 10),
// // //               const Text(
// // //                 'Image Successfully Updated!',
// // //                 style: TextStyle(color: Colors.white),
// // //               ),
// // //             ],
// // //           ),
// // //           backgroundColor: Colors.green,
// // //           behavior: SnackBarBehavior.floating,
// // //           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// // //           shape: RoundedRectangleBorder(
// // //             borderRadius: BorderRadius.circular(8),
// // //           ),
// // //         ),
// // //       );
// // //     } catch (e) {
// // //       // إظهار Snackbar عند حدوث خطأ
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(
// // //           content: Text('Error updating status.'),
// // //           backgroundColor: Colors.red,
// // //         ),
// // //       );
// // //     }
// // //   }

// // //   Widget _buildImageSection(String imagePath, String label, bool isAsset) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.stretch,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: const TextStyle(
// // //             fontSize: 16,
// // //             fontWeight: FontWeight.bold,
// // //             color: Colors.black,
// // //           ),
// // //           textAlign: TextAlign.center,
// // //         ),
// // //         const SizedBox(height: 8),
// // //         GestureDetector(
// // //           onTap: () {
// // //             showDialog(
// // //               context: context,
// // //               builder: (context) => Dialog(
// // //                 child: ClipRRect(
// // //                   borderRadius: BorderRadius.circular(12),
// // //                   child: isAsset
// // //                       ? Image.asset(imagePath, fit: BoxFit.cover)
// // //                       : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
// // //                 ),
// // //               ),
// // //             );
// // //           },
// // //           child: ClipRRect(
// // //             borderRadius: BorderRadius.circular(12),
// // //             child: isAsset
// // //                 ? Image.asset(
// // //                     imagePath,
// // //                     height: 180,
// // //                     width: double.infinity,
// // //                     fit: BoxFit.cover,
// // //                     errorBuilder: (context, error, stackTrace) => Container(
// // //                       height: 180,
// // //                       width: double.infinity,
// // //                       color: Colors.grey,
// // //                       child: const Center(child: Text("Image not found")),
// // //                     ),
// // //                   )
// // //                 : CachedNetworkImage(
// // //                     imageUrl: imagePath,
// // //                     height: 180,
// // //                     width: double.infinity,
// // //                     fit: BoxFit.cover,
// // //                     placeholder: (context, url) =>
// // //                         const Center(child: CircularProgressIndicator()),
// // //                     errorWidget: (context, url, error) => Container(
// // //                       height: 180,
// // //                       width: double.infinity,
// // //                       color: Colors.grey,
// // //                       child: const Center(child: Text("Image not available")),
// // //                     ),
// // //                   ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.grey[100],
// // //       appBar: AppBar(
// // //         title: const Text(
// // //           "Alert Details",
// // //           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
// // //         ),
// // //         backgroundColor: Colors.red[400],
// // //         centerTitle: true,
// // //         elevation: 0,
// // //       ),
// // //       body: StreamBuilder<QuerySnapshot>(
// // //         stream: FirebaseFirestore.instance
// // //             .collection('History')
// // //             .where('status', isEqualTo: 'In Progress')
// // //             .snapshots(),
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return const Center(child: CircularProgressIndicator());
// // //           }
// // //           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// // //             return const Center(
// // //               child: Text(
// // //                 'No Alerts at the moment.',
// // //                 style: TextStyle(color: Colors.grey, fontSize: 16),
// // //               ),
// // //             );
// // //           }

// // //           final documents = snapshot.data!.docs;

// // //           return ListView.builder(
// // //             padding: const EdgeInsets.all(16),
// // //             itemCount: documents.length,
// // //             itemBuilder: (context, index) {
// // //               final item = documents[index].data() as Map<String, dynamic>;
// // //               final docId = documents[index].id;
// // //               final imageUrl = item['imageUrl'] ?? '';
// // //               final normalImage = item['normalImage'] ?? 'assets/images/normal.png';
// // //               final predictionResult = item['predictionResult'] ?? 'No Prediction';

// // //               return Card(
// // //                 elevation: 6,
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(15),
// // //                 ),
// // //                 margin: const EdgeInsets.symmetric(vertical: 12),
// // //                 child: Padding(
// // //                   padding: const EdgeInsets.all(16),
// // //                   child: Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.stretch,
// // //                     children: [
// // //                       Row(
// // //                         children: [
// // //                           Icon(
// // //                             Icons.warning_rounded,
// // //                             color: Colors.red[700],
// // //                             size: 40,
// // //                           ),
// // //                           const SizedBox(width: 10),
// // //                           Expanded(
// // //                             child: Text(
// // //                               "Warning: $predictionResult",
// // //                               style: TextStyle(
// // //                                 fontSize: 18,
// // //                                 fontWeight: FontWeight.bold,
// // //                                 color: Colors.red[700],
// // //                               ),
// // //                               maxLines: 2,
// // //                               overflow: TextOverflow.ellipsis,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       const SizedBox(height: 16),
// // //                       if (imageUrl.isNotEmpty)
// // //                         _buildImageSection(imageUrl, "Thermal Image", false),
// // //                       const SizedBox(height: 12),
// // //                       if (normalImage.isNotEmpty)
// // //                         _buildImageSection(normalImage, "Normal Image", true),
// // //                       const SizedBox(height: 16),
// // //                       ElevatedButton.icon(
// // //                         onPressed: () async {
// // //                           await _updateStatusInFirestore(docId);
// // //                         },
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor: Colors.red[400],
// // //                           shape: RoundedRectangleBorder(
// // //                             borderRadius: BorderRadius.circular(20),
// // //                           ),
// // //                         ),
// // //                         icon: const Icon(Icons.update, color: Colors.white),
// // //                         label: const Text(
// // //                           "Update Status",
// // //                           style: TextStyle(color: Colors.white),
// // //                         ),
// // //                       ),
// // //                       const SizedBox(height: 8),
// // //                       ElevatedButton.icon(
// // //                         onPressed: () {
// // //                           Navigator.push(
// // //                             context,
// // //                             MaterialPageRoute(
// // //                               builder: (context) => InstructionPage(),
// // //                             ),
// // //                           );
// // //                         },
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor: Colors.blue[400],
// // //                           shape: RoundedRectangleBorder(
// // //                             borderRadius: BorderRadius.circular(20),
// // //                           ),
// // //                         ),
// // //                         icon: const Icon(Icons.info_outline, color: Colors.white),
// // //                         label: const Text(
// // //                           "View Instructions",
// // //                           style: TextStyle(color: Colors.white),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               );
// // //             },
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }



// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:cached_network_image/cached_network_image.dart';
// // // import 'instructionPage.dart';

// // // class Alerts extends StatefulWidget {
// // //   final String imageUrl;
// // //   final String predictionResult;

// // //   const Alerts({
// // //     Key? key,
// // //     required this.imageUrl,
// // //     required this.predictionResult,
// // //   }) : super(key: key);

// // //   @override
// // //   _AlertsState createState() => _AlertsState();
// // // }

// // // class _AlertsState extends State<Alerts> {
// // //   Future<void> _updateStatusInFirestore(String docId) async {
// // //     try {
// // //       await FirebaseFirestore.instance.collection('History').doc(docId).update({
// // //         'status': 'Updated',
// // //       });
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(
// // //           content: Row(
// // //             children: [
// // //               const Icon(Icons.check_circle, color: Colors.white),
// // //               const SizedBox(width: 10),
// // //               const Text(
// // //                 'Image Successfully Updated!',
// // //                 style: TextStyle(color: Colors.white),
// // //               ),
// // //             ],
// // //           ),
// // //           backgroundColor: Colors.green,
// // //           behavior: SnackBarBehavior.floating,
// // //           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// // //           shape: RoundedRectangleBorder(
// // //             borderRadius: BorderRadius.circular(8),
// // //           ),
// // //         ),
// // //       );
// // //     } catch (e) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(
// // //           content: Text('Error updating status.'),
// // //           backgroundColor: Colors.red,
// // //         ),
// // //       );
// // //     }
// // //   }

// // //   Widget _buildImageSection(String imagePath, String label, bool isAsset) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.stretch,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: const TextStyle(
// // //             fontSize: 16,
// // //             fontWeight: FontWeight.bold,
// // //             color: Colors.black,
// // //           ),
// // //           textAlign: TextAlign.center,
// // //         ),
// // //         const SizedBox(height: 8),
// // //         GestureDetector(
// // //           onTap: () {
// // //             showDialog(
// // //               context: context,
// // //               builder: (context) => Dialog(
// // //                 child: ClipRRect(
// // //                   borderRadius: BorderRadius.circular(12),
// // //                   child: isAsset
// // //                       ? Image.asset(imagePath, fit: BoxFit.cover)
// // //                       : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
// // //                 ),
// // //               ),
// // //             );
// // //           },
// // //           child: ClipRRect(
// // //             borderRadius: BorderRadius.circular(12),
// // //             child: isAsset
// // //                 ? Image.asset(
// // //                     imagePath,
// // //                     height: 180,
// // //                     width: double.infinity,
// // //                     fit: BoxFit.cover,
// // //                     errorBuilder: (context, error, stackTrace) => Container(
// // //                       height: 180,
// // //                       width: double.infinity,
// // //                       color: Colors.grey,
// // //                       child: const Center(child: Text("Image not found")),
// // //                     ),
// // //                   )
// // //                 : CachedNetworkImage(
// // //                     imageUrl: imagePath,
// // //                     height: 180,
// // //                     width: double.infinity,
// // //                     fit: BoxFit.cover,
// // //                     placeholder: (context, url) =>
// // //                         const Center(child: CircularProgressIndicator()),
// // //                     errorWidget: (context, url, error) => Container(
// // //                       height: 180,
// // //                       width: double.infinity,
// // //                       color: Colors.grey,
// // //                       child: const Center(child: Text("Image not available")),
// // //                     ),
// // //                   ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.grey[100],
// // //       appBar: AppBar(
// // //         title: const Text(
// // //           "Alert Details",
// // //           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
// // //         ),
// // //         backgroundColor: Colors.red[400],
// // //         centerTitle: true,
// // //         elevation: 0,
// // //       ),
// // //       body: StreamBuilder<QuerySnapshot>(
// // //         stream: FirebaseFirestore.instance
// // //             .collection('History')
// // //             .where('status', isEqualTo: 'In Progress')
// // //             .snapshots(),
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.waiting) {
// // //             return const Center(child: CircularProgressIndicator());
// // //           }
// // //           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// // //             return const Center(
// // //               child: Text(
// // //                 'No Alerts at the moment.',
// // //                 style: TextStyle(color: Colors.grey, fontSize: 16),
// // //               ),
// // //             );
// // //           }

// // //           final documents = snapshot.data!.docs;

// // //           return ListView.builder(
// // //             padding: const EdgeInsets.all(16),
// // //             itemCount: documents.length,
// // //             itemBuilder: (context, index) {
// // //               final item = documents[index].data() as Map<String, dynamic>;
// // //               final docId = documents[index].id;
// // //               final imageUrl = item['imageUrl'] ?? '';
// // //               final normalImageUrl = item['normalImageUrl'] ?? ''; // حقل الصورة
// // //               final area = item['area'] ?? 'No Area'; // حقل المنطقة
// // //               final predictionResult = item['predictionResult'] ?? 'No Prediction';

// // //               return Card(
// // //                 elevation: 6,
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(15),
// // //                 ),
// // //                 margin: const EdgeInsets.symmetric(vertical: 12),
// // //                 child: Padding(
// // //                   padding: const EdgeInsets.all(16),
// // //                   child: Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.stretch,
// // //                     children: [
// // //                       Row(
// // //                         children: [
// // //                           Icon(
// // //                             Icons.warning_rounded,
// // //                             color: Colors.red[700],
// // //                             size: 40,
// // //                           ),
// // //                           const SizedBox(width: 10),
// // //                           Expanded(
// // //                             child: Column(
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: [
// // //                                 Text(
// // //                                   "Warning: $predictionResult",
// // //                                   style: TextStyle(
// // //                                     fontSize: 18,
// // //                                     fontWeight: FontWeight.bold,
// // //                                     color: Colors.red[700],
// // //                                   ),
// // //                                   maxLines: 2,
// // //                                   overflow: TextOverflow.ellipsis,
// // //                                 ),
// // //                                 const SizedBox(height: 4),
// // //                                 Text(
// // //                                   "Area: $area",
// // //                                   style: const TextStyle(
// // //                                     fontSize: 16,
// // //                                     color: Colors.black,
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       const SizedBox(height: 16),
// // //                       if (imageUrl.isNotEmpty)
// // //                         _buildImageSection(imageUrl, "Thermal Image", false),
// // //                       const SizedBox(height: 12),
// // //                       if (normalImageUrl.isNotEmpty)
// // //                         _buildImageSection(normalImageUrl, "Normal Image", false),
// // //                       const SizedBox(height: 16),
// // //                       ElevatedButton.icon(
// // //                         onPressed: () async {
// // //                           await _updateStatusInFirestore(docId);
// // //                         },
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor: Colors.red[400],
// // //                           shape: RoundedRectangleBorder(
// // //                             borderRadius: BorderRadius.circular(20),
// // //                           ),
// // //                         ),
// // //                         icon: const Icon(Icons.update, color: Colors.white),
// // //                         label: const Text(
// // //                           "Update Status",
// // //                           style: TextStyle(color: Colors.white),
// // //                         ),
// // //                       ),
// // //                       const SizedBox(height: 8),
// // //                       ElevatedButton.icon(
// // //                         onPressed: () {
// // //                           Navigator.push(
// // //                             context,
// // //                             MaterialPageRoute(
// // //                               builder: (context) => InstructionPage(),
// // //                             ),
// // //                           );
// // //                         },
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor: Colors.blue[400],
// // //                           shape: RoundedRectangleBorder(
// // //                             borderRadius: BorderRadius.circular(20),
// // //                           ),
// // //                         ),
// // //                         icon: const Icon(Icons.info_outline, color: Colors.white),
// // //                         label: const Text(
// // //                           "View Instructions",
// // //                           style: TextStyle(color: Colors.white),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               );
// // //             },
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }



// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'instructionPage.dart';

// // class Alerts extends StatefulWidget {
// //   final String imageUrl;
// //   final String predictionResult;

// //   const Alerts({
// //     Key? key,
// //     required this.imageUrl,
// //     required this.predictionResult,
// //   }) : super(key: key);

// //   @override
// //   _AlertsState createState() => _AlertsState();
// // }

// // class _AlertsState extends State<Alerts> {
// //   Future<void> _updateStatusInFirestore(String docId) async {
// //     try {
// //       await FirebaseFirestore.instance.collection('History').doc(docId).update({
// //         'status': 'Updated',
// //       });
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(
// //           content: Row(
// //             children: [
// //               const Icon(Icons.check_circle, color: Colors.white),
// //               const SizedBox(width: 10),
// //               const Text(
// //                 'Image Successfully Updated!',
// //                 style: TextStyle(color: Colors.white),
// //               ),
// //             ],
// //           ),
// //           backgroundColor: Colors.green,
// //           behavior: SnackBarBehavior.floating,
// //           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(8),
// //           ),
// //         ),
// //       );
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text('Error updating status.'),
// //           backgroundColor: Colors.red,
// //         ),
// //       );
// //     }
// //   }

// //   Widget _buildImageSection(String imagePath, String label, bool isAsset) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.stretch,
// //       children: [
// //         Text(
// //           label,
// //           style: const TextStyle(
// //             fontSize: 16,
// //             fontWeight: FontWeight.bold,
// //             color: Colors.black,
// //           ),
// //           textAlign: TextAlign.center,
// //         ),
// //         const SizedBox(height: 8),
// //         GestureDetector(
// //           onTap: () {
// //             showDialog(
// //               context: context,
// //               builder: (context) => Dialog(
// //                 child: ClipRRect(
// //                   borderRadius: BorderRadius.circular(12),
// //                   child: isAsset
// //                       ? Image.asset(imagePath, fit: BoxFit.cover)
// //                       : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
// //                 ),
// //               ),
// //             );
// //           },
// //           child: ClipRRect(
// //             borderRadius: BorderRadius.circular(12),
// //             child: isAsset
// //                 ? Image.asset(
// //                     imagePath,
// //                     height: 180,
// //                     width: double.infinity,
// //                     fit: BoxFit.cover,
// //                     errorBuilder: (context, error, stackTrace) => Container(
// //                       height: 180,
// //                       width: double.infinity,
// //                       color: Colors.grey,
// //                       child: const Center(child: Text("Image not found")),
// //                     ),
// //                   )
// //                 : CachedNetworkImage(
// //                     imageUrl: imagePath,
// //                     height: 180,
// //                     width: double.infinity,
// //                     fit: BoxFit.cover,
// //                     placeholder: (context, url) =>
// //                         const Center(child: CircularProgressIndicator()),
// //                     errorWidget: (context, url, error) => Container(
// //                       height: 180,
// //                       width: double.infinity,
// //                       color: Colors.grey,
// //                       child: const Center(child: Text("Image not available")),
// //                     ),
// //                   ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[100],
// //       appBar: AppBar(
// //         title: const Text(
// //           "Alert Details",
// //           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
// //         ),
// //         backgroundColor: Colors.red[400],
// //         centerTitle: true,
// //         elevation: 0,
// //       ),
// //       body: StreamBuilder<QuerySnapshot>(
// //         stream: FirebaseFirestore.instance
// //             .collection('History')
// //             .where('status', isEqualTo: 'In Progress')
// //             .snapshots(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return const Center(child: CircularProgressIndicator());
// //           }
// //           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// //             return const Center(
// //               child: Text(
// //                 'No Alerts at the moment.',
// //                 style: TextStyle(color: Colors.grey, fontSize: 16),
// //               ),
// //             );
// //           }

// //           final documents = snapshot.data!.docs;

// //           return ListView.builder(
// //             padding: const EdgeInsets.all(16),
// //             itemCount: documents.length,
// //             itemBuilder: (context, index) {
// //               final item = documents[index].data() as Map<String, dynamic>;
// //               final docId = documents[index].id;
// //               final imageUrl = item['imageUrl'] ?? '';
// //               final normalImageUrl = item['normalImageUrl'] ?? ''; // حقل الصورة
// //               final area = item['area'] ?? 'No Area'; // حقل المنطقة
// //               final predictionResult = item['predictionResult'] ?? 'No Prediction';
              

// //               // تخطي العرض إذا كان predictionResult يساوي "Unknown"
// //               // if (predictionResult == 'Unknown') {
// //               //   return const SizedBox.shrink(); // عنصر فارغ لا يظهر
// //               // }

// //               return Card(
// //                 elevation: 6,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(15),
// //                 ),
// //                 margin: const EdgeInsets.symmetric(vertical: 12),
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(16),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.stretch,
// //                     children: [
// //                       Row(
// //                         children: [
// //                           Icon(
// //                             Icons.warning_rounded,
// //                             color: Colors.red[700],
// //                             size: 40,
// //                           ),
// //                           const SizedBox(width: 10),
// //                           Expanded(
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 Text(
// //                                   "Warning: $predictionResult",
// //                                   style: TextStyle(
// //                                     fontSize: 18,
// //                                     fontWeight: FontWeight.bold,
// //                                     color: Colors.red[700],
// //                                   ),
// //                                   maxLines: 2,
// //                                   overflow: TextOverflow.ellipsis,
// //                                 ),
// //                                 const SizedBox(height: 4),
// //                                 Text(
// //                                   "Area: $area",
// //                                   style: const TextStyle(
// //                                     fontSize: 16,
// //                                     color: Colors.black,
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                       const SizedBox(height: 16),
// //                       if (imageUrl.isNotEmpty)
// //                         _buildImageSection(imageUrl, "Thermal Image", false),
// //                       const SizedBox(height: 12),
// //                       if (normalImageUrl.isNotEmpty)
// //                         _buildImageSection(normalImageUrl, "Normal Image", false),
// //                       const SizedBox(height: 16),
// //                       ElevatedButton.icon(
// //                         onPressed: () async {
// //                           await _updateStatusInFirestore(docId);
// //                         },
// //                         style: ElevatedButton.styleFrom(
// //                           backgroundColor: Colors.red[400],
// //                           shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(20),
// //                           ),
// //                         ),
// //                         icon: const Icon(Icons.update, color: Colors.white),
// //                         label: const Text(
// //                           "Update Status",
// //                           style: TextStyle(color: Colors.white),
// //                         ),
// //                       ),
// //                       const SizedBox(height: 8),
// //                       ElevatedButton.icon(
// //                         onPressed: () {
// //                           Navigator.push(
// //                             context,
// //                             MaterialPageRoute(
// //                               builder: (context) => InstructionPage(),
// //                             ),
// //                           );
// //                         },
// //                         style: ElevatedButton.styleFrom(
// //                           backgroundColor: Colors.blue[400],
// //                           shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(20),
// //                           ),
// //                         ),
// //                         icon: const Icon(Icons.info_outline, color: Colors.white),
// //                         label: const Text(
// //                           "View Instructions",
// //                           style: TextStyle(color: Colors.white),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               );
// //             },
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'instructionPage.dart';

// class Alerts extends StatefulWidget {
//   final String imageUrl;
//   final String predictionResult;

//   const Alerts({
//     super.key,
//     required this.imageUrl,
//     required this.predictionResult,
//   });

//   @override
//   _AlertsState createState() => _AlertsState();
// }

// class _AlertsState extends State<Alerts> {
//   Future<void> _updateStatusInFirestore(String docId) async {
//     try {
//       await FirebaseFirestore.instance.collection('History').doc(docId).update({
//         'status': 'Updated',
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Row(
//             children: [
//               const Icon(Icons.check_circle, color: Colors.white),
//               const SizedBox(width: 10),
//               const Text(
//                 'Image Successfully Updated!',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ],
//           ),
//           backgroundColor: Colors.green,
//           behavior: SnackBarBehavior.floating,
//           margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Error updating status.'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//   Widget _buildImageSection(String imagePath, String label, bool isAsset) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 8),
//         GestureDetector(
//           onTap: () {
//             showDialog(
//               context: context,
//               builder: (context) => Dialog(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: isAsset
//                       ? Image.asset(imagePath, fit: BoxFit.cover)
//                       : CachedNetworkImage(imageUrl: imagePath, fit: BoxFit.cover),
//                 ),
//               ),
//             );
//           },
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: isAsset
//                 ? Image.asset(
//                     imagePath,
//                     height: 180,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                     errorBuilder: (context, error, stackTrace) => Container(
//                       height: 180,
//                       width: double.infinity,
//                       color: Colors.grey,
//                       child: const Center(child: Text("Image not found")),
//                     ),
//                   )
//                 : CachedNetworkImage(
//                     imageUrl: imagePath,
//                     height: 180,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                     placeholder: (context, url) =>
//                         const Center(child: CircularProgressIndicator()),
//                     errorWidget: (context, url, error) => Container(
//                       height: 180,
//                       width: double.infinity,
//                       color: Colors.grey,
//                       child: const Center(child: Text("Image not available")),
//                     ),
//                   ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         title: const Text(
//           "Alert Details",
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         backgroundColor: Colors.red[400],
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance
//             .collection('History')
//             .where('status', isEqualTo: 'In Progress')
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return const Center(
//               child: Text(
//                 'No Alerts at the moment.',
//                 style: TextStyle(color: Colors.grey, fontSize: 16),
//               ),
//             );
//           }

//           final documents = snapshot.data!.docs;

//           return ListView.builder(
//             padding: const EdgeInsets.all(16),
//             itemCount: documents.length,
//             itemBuilder: (context, index) {
//               final item = documents[index].data() as Map<String, dynamic>;
//               final docId = documents[index].id;
//               final imageUrl = item['imageUrl'] ?? '';
//               final normalImageUrl = item['normalImageUrl'] ?? ''; // حقل الصورة
//               final area = item['area'] ?? 'No Area'; // حقل المنطقة
//               final predictionResult = item['predictionResult'] ?? 'No Prediction';
//               final camera = item['camera'] ?? 'No Camera'; // استرجاع اسم الكاميرا

//               return Card(
//                 elevation: 6,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 margin: const EdgeInsets.symmetric(vertical: 12),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.warning_rounded,
//                             color: Colors.red[700],
//                             size: 40,
//                           ),
//                           const SizedBox(width: 10),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Warning: $predictionResult",
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.red[700],
//                                   ),
//                                   maxLines: 2,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 const SizedBox(height: 4),
//                                 Text(
//                                   "Area: $area",
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 4),
//                                 Row(
//                                   children: [
//                                     Icon(Icons.camera_alt, color: Colors.blue[700], size: 30),
//                                     const SizedBox(width: 10),
//                                     Expanded(
//                                       child: Text(
//                                         "Camera: $camera",
//                                         style: const TextStyle(
//                                           fontSize: 16,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 16),
//                       if (imageUrl.isNotEmpty)
//                         _buildImageSection(imageUrl, "Thermal Image", false),
//                       const SizedBox(height: 12),
//                       if (normalImageUrl.isNotEmpty)
//                         _buildImageSection(normalImageUrl, "Normal Image", false),
//                       const SizedBox(height: 16),
//                       ElevatedButton.icon(
//                         onPressed: () async {
//                           await _updateStatusInFirestore(docId);
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.red[400],
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                         ),
//                         icon: const Icon(Icons.update, color: Colors.white),
//                         label: const Text(
//                           "Update Status",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       ElevatedButton.icon(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => InstructionPage(),
//                             ),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blue[400],
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                         ),
//                         icon: const Icon(Icons.info_outline, color: Colors.white),
//                         label: const Text(
//                           "View Instructions",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'instructionPage.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class Alerts extends StatefulWidget {
  final String imageUrl;
  final String predictionResult;

  const Alerts({
    Key? key,
    required this.imageUrl,
    required this.predictionResult,
  }) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  Set<String> notifiedAlerts = {};
  Future<void> _updateStatusInFirestore(String docId) async {
    try {
      await FirebaseFirestore.instance.collection('History').doc(docId).update({
        'status': 'Updated',
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(Icons.check_circle, color: Colors.white),
              const SizedBox(width: 10),
              const Text(
                'Image Successfully Updated!',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error updating status.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Widget _buildImageSection(String imagePath, String label, bool isAsset) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => Dialog(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: isAsset
                      ? Image.asset(imagePath, fit: BoxFit.cover)
                      : CachedNetworkImage(
                          imageUrl: imagePath, fit: BoxFit.cover),
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: isAsset
                ? Image.asset(
                    imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 180,
                      width: double.infinity,
                      color: Colors.grey,
                      child: const Center(child: Text("Image not found")),
                    ),
                  )
                : CachedNetworkImage(
                    imageUrl: imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Container(
                      height: 180,
                      width: double.infinity,
                      color: Colors.grey,
                      child: const Center(child: Text("Image not available")),
                    ),
                  ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Alert Details",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.red[400],
        centerTitle: true,
        elevation: 0,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('History')
            .where('status', isEqualTo: 'In Progress')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text(
                'No Alerts at the moment.',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            );
          }
          final documents = snapshot.data!.docs;

          // Send notifications for new alerts
          for (var doc in documents) {
            final data = doc.data() as Map<String, dynamic>;
            final docId = doc.id;
            final predictionResult = data['predictionResult'] ?? 'New Alert';
            final area = data['area'] ?? 'Unknown Area';

            if (!notifiedAlerts.contains(docId)) {
              sendNotification(
                '🚨 New Alert: $predictionResult',
                'Location: $area',
              );
              notifiedAlerts.add(docId); // Mark this alert as notified
            }
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: documents.length,
            itemBuilder: (context, index) {
              final item = documents[index].data() as Map<String, dynamic>;
              final docId = documents[index].id;
              final imageUrl = item['imageUrl'] ?? '';
              final normalImageUrl = item['normalImageUrl'] ?? ''; // حقل الصورة
              final area = item['area'] ?? 'No Area'; // حقل المنطقة
              final predictionResult =
                  item['predictionResult'] ?? 'No Prediction';
                  

              // تخطي العرض إذا كان predictionResult يساوي "Unknown"
              // if (predictionResult == 'Unknown') {
              //   return const SizedBox.shrink(); // عنصر فارغ لا يظهر
              // }

              return Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.warning_rounded,
                            color: Colors.red[700],
                            size: 40,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Warning: $predictionResult",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[700],
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Area: $area",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      if (imageUrl.isNotEmpty)
                        _buildImageSection(imageUrl, "Thermal Image", false),
                      const SizedBox(height: 12),
                      if (normalImageUrl.isNotEmpty)
                        _buildImageSection(
                            normalImageUrl, "Normal Image", false),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await _updateStatusInFirestore(docId);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        icon: const Icon(Icons.update, color: Colors.white),
                        label: const Text(
                          "Update Status",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InstructionPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        icon:
                            const Icon(Icons.info_outline, color: Colors.white),
                        label: const Text(
                          "View Instructions",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void sendNotification(String title, String body) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: DateTime.now()
            .millisecondsSinceEpoch
            .remainder(100000), // Unique ID for each notification
        channelKey: 'basic_channel', // Channel key defined in main.dart
        title: title, // Title of the notification
        body: body, // Body text of the notification
      ),
    );
  }
}