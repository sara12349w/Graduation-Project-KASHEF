// // // // // import 'package:flutter/material.dart';

// // // // // // class History extends StatelessWidget {
// // // // // //   const History({super.key});

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //         body: const Center(
// // // // // //         child: Text(
// // // // // //           'This is History page!',
// // // // // //           style: TextStyle(fontSize: 24),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // class History extends StatelessWidget {
// // // // //    History({super.key});
// // // // //   final List<Map<String, String>> historyItems = [
// // // // //     {'area': 'Area B1', 'id': '112996550', 'status': 'Completed'},
// // // // //     {'area': 'Area C1', 'id': '112996589', 'status': 'Completed'},
// // // // //     {'area': 'Area B2', 'id': '112996590', 'status': 'Completed'},
// // // // //     {'area': 'Area A1', 'id': '112996532', 'status': 'Completed'},
// // // // //     {'area': 'Area D1', 'id': '112996585', 'status': 'Completed'},
// // // // //     {'area': 'Area A3', 'id': '112996566', 'status': 'Completed'},
// // // // //     {'area': 'Area A1', 'id': '112996567', 'status': 'Completed'},
// // // // //     {'area': 'Area B1', 'id': '112996527', 'status': 'Completed'},
// // // // //   ];

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       backgroundColor: Colors.white,
// // // // //       body: SafeArea(
// // // // //         child: Padding(
// // // // //           padding: const EdgeInsets.all(16.0),
// // // // //           child: Column(
// // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //             children: [
// // // // //               // Top Row (Profile Image, Name, Icons)
// // // // //               Row(
// // // // //                 children: [
// // // // //                   // Profile Image
// // // // //                   CircleAvatar(
// // // // //                     radius: 30,
// // // // //                     backgroundImage: AssetImage('assets/images/employeeIMG.png'), // Replace with your asset
// // // // //                   ),
// // // // //                   SizedBox(width: 12),
// // // // //                   // Name
// // // // //                   Column(
// // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                     children: [
// // // // //                       Text(
// // // // //                         'Hello, Shakir',
// // // // //                         style: TextStyle(
// // // // //                           fontSize: 18,
// // // // //                           fontWeight: FontWeight.bold,
// // // // //                         ),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               SizedBox(height: 20),
// // // // //               // Buttons (History and Filter Icon)
// // // // //               Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                 children: [
// // // // //                   ElevatedButton(
// // // // //                     onPressed: null,
// // // // //                     style: ElevatedButton.styleFrom(
// // // // //                        backgroundColor: Colors.blue, // Background color
// // // // //                       shape: RoundedRectangleBorder(
// // // // //                         borderRadius: BorderRadius.circular(12),
// // // // //                       ),
// // // // //                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// // // // //                     ),
// // // // //                     child: Text('History', style: TextStyle(fontSize: 16)),
// // // // //                   ),
// // // // //                   IconButton(
// // // // //                     icon: Icon(Icons.filter_alt_outlined, color: Colors.blue, size: 30),
// // // // //                     onPressed: () {
// // // // //                       // Handle sort/filter action
// // // // //                     },
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               SizedBox(height: 20),
// // // // //               // History List
// // // // //               Expanded(
// // // // //                 child: ListView.builder(
// // // // //                   itemCount: historyItems.length,
// // // // //                   itemBuilder: (context, index) {
// // // // //                     final item = historyItems[index];
// // // // //                     return Container(
// // // // //                       margin: EdgeInsets.symmetric(vertical: 8),
// // // // //                       padding: EdgeInsets.all(12),
// // // // //                       decoration: BoxDecoration(
// // // // //                         color: Colors.blue,
// // // // //                         borderRadius: BorderRadius.circular(12),
// // // // //                       ),
// // // // //                       child: Row(
// // // // //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                         children: [
// // // // //                           // Left Side (Check Icon and Area info)
// // // // //                           Row(
// // // // //                             children: [
// // // // //                               Icon(Icons.check, color: Colors.white),
// // // // //                               SizedBox(width: 10),
// // // // //                               Column(
// // // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                                 children: [
// // // // //                                   Text(
// // // // //                                     item['area']!,
// // // // //                                     style: TextStyle(
// // // // //                                       color: Colors.white,
// // // // //                                       fontWeight: FontWeight.bold,
// // // // //                                       fontSize: 16,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   Text(
// // // // //                                     'ID:${item['id']}',
// // // // //                                     style: TextStyle(
// // // // //                                       color: Colors.white70,
// // // // //                                       fontSize: 14,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ],
// // // // //                           ),
// // // // //                           // Right Side (Status)
// // // // //                           Text(
// // // // //                             item['status']!,
// // // // //                             style: TextStyle(
// // // // //                               color: Colors.white,
// // // // //                               fontWeight: FontWeight.bold,
// // // // //                               fontSize: 14,
// // // // //                             ),
// // // // //                           ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     );
// // // // //                   },
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // class History extends StatelessWidget {
// // // //   const History({super.key});

// // // //   // دالة لجلب بيانات التاريخ من Firestore
// // // //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// // // //     return FirebaseFirestore.instance
// // // //         .collection('History')
// // // //         .orderBy('timestamp', descending: true)
// // // //         .snapshots()
// // // //         .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Colors.white,
// // // //       body: SafeArea(
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(16.0),
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               // Top Row (Profile Image, Name, Icons)
// // // //               Row(
// // // //                 children: [
// // // //                   // Profile Image
// // // //                   CircleAvatar(
// // // //                     radius: 30,
// // // //                     backgroundImage: AssetImage('assets/images/employeeIMG.png'), // Replace with your asset
// // // //                   ),
// // // //                   SizedBox(width: 12),
// // // //                   // Name
// // // //                   Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       Text(
// // // //                         'Hello, Shakir',
// // // //                         style: TextStyle(
// // // //                           fontSize: 18,
// // // //                           fontWeight: FontWeight.bold,
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //               SizedBox(height: 20),
// // // //               // Buttons (History and Filter Icon)
// // // //               Row(
// // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                 children: [
// // // //                   ElevatedButton(
// // // //                     onPressed: null,
// // // //                     style: ElevatedButton.styleFrom(
// // // //                       backgroundColor: Colors.blue, // Background color
// // // //                       shape: RoundedRectangleBorder(
// // // //                         borderRadius: BorderRadius.circular(12),
// // // //                       ),
// // // //                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// // // //                     ),
// // // //                     child: Text('History', style: TextStyle(fontSize: 16)),
// // // //                   ),
// // // //                   IconButton(
// // // //                     icon: Icon(Icons.filter_alt_outlined, color: Colors.blue, size: 30),
// // // //                     onPressed: () {
// // // //                       // Handle sort/filter action
// // // //                     },
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //               SizedBox(height: 20),
// // // //               // History List
// // // //               Expanded(
// // // //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// // // //                   stream: fetchHistoryItems(),
// // // //                   builder: (context, snapshot) {
// // // //                     if (snapshot.connectionState == ConnectionState.waiting) {
// // // //                       return Center(child: CircularProgressIndicator());
// // // //                     }
// // // //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // //                       return Center(child: Text('No history records found.'));
// // // //                     }

// // // //                     final historyItems = snapshot.data!;

// // // //                     return ListView.builder(
// // // //                       itemCount: historyItems.length,
// // // //                       itemBuilder: (context, index) {
// // // //                         final item = historyItems[index];
// // // //                         return Container(
// // // //                           margin: EdgeInsets.symmetric(vertical: 8),
// // // //                           padding: EdgeInsets.all(12),
// // // //                           decoration: BoxDecoration(
// // // //                             color: Colors.blue,
// // // //                             borderRadius: BorderRadius.circular(12),
// // // //                           ),
// // // //                           child: Row(
// // // //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                             children: [
// // // //                               // Left Side (Check Icon and Area info)
// // // //                               Row(
// // // //                                 children: [
// // // //                                   Icon(Icons.check, color: Colors.white),
// // // //                                   SizedBox(width: 10),
// // // //                                   Column(
// // // //                                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                                     children: [
// // // //                                       Text(
// // // //                                         item['selectedArea'] ?? 'Unknown Area',
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.white,
// // // //                                           fontWeight: FontWeight.bold,
// // // //                                           fontSize: 16,
// // // //                                         ),
// // // //                                       ),
// // // //                                       Text(
// // // //                                         'Gas Type: ${item['selectedGasType'] ?? 'Unknown'}',
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.white70,
// // // //                                           fontSize: 14,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ],
// // // //                               ),
// // // //                               // Right Side (Status)
// // // //                               Text(
// // // //                                 'In Progress',
// // // //                                 style: TextStyle(
// // // //                                   color: Colors.white,
// // // //                                   fontWeight: FontWeight.bold,
// // // //                                   fontSize: 14,
// // // //                                 ),
// // // //                               ),
// // // //                             ],
// // // //                           ),
// // // //                         );
// // // //                       },
// // // //                     );
// // // //                   },
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // class History extends StatelessWidget {
// // //   const History({super.key});

// // //   // دالة لجلب بيانات التاريخ من Firestore
// // //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// // //     return FirebaseFirestore.instance
// // //         .collection('History')
// // //         .orderBy('timestamp', descending: true)
// // //         .snapshots()
// // //         .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       body: SafeArea(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               // Top Row (Profile Image, Name, Icons)
// // //               Row(
// // //                 children: [
// // //                   CircleAvatar(
// // //                     radius: 30,
// // //                     backgroundImage: AssetImage('assets/images/employeeIMG.png'), // استبدال بالصورة المناسبة
// // //                   ),
// // //                   SizedBox(width: 12),
// // //                   Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       Text(
// // //                         'Hello, Shakir',
// // //                         style: TextStyle(
// // //                           fontSize: 18,
// // //                           fontWeight: FontWeight.bold,
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   ElevatedButton(
// // //                     onPressed: null,
// // //                     style: ElevatedButton.styleFrom(
// // //                       backgroundColor: Colors.blue,
// // //                       shape: RoundedRectangleBorder(
// // //                         borderRadius: BorderRadius.circular(12),
// // //                       ),
// // //                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// // //                     ),
// // //                     child: Text('History', style: TextStyle(fontSize: 16)),
// // //                   ),
// // //                   IconButton(
// // //                     icon: Icon(Icons.filter_alt_outlined, color: Colors.blue, size: 30),
// // //                     onPressed: () {
// // //                       // تنفيذ التصفية
// // //                     },
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Expanded(
// // //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// // //                   stream: fetchHistoryItems(),
// // //                   builder: (context, snapshot) {
// // //                     if (snapshot.connectionState == ConnectionState.waiting) {
// // //                       return Center(child: CircularProgressIndicator());
// // //                     }
// // //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //                       return Center(child: Text('No history records found.'));
// // //                     }

// // //                     final historyItems = snapshot.data!;

// // //                     return ListView.builder(
// // //                       itemCount: historyItems.length,
// // //                       itemBuilder: (context, index) {
// // //                         final item = historyItems[index];
// // //                         return Container(
// // //                           margin: EdgeInsets.symmetric(vertical: 8),
// // //                           padding: EdgeInsets.all(12),
// // //                           decoration: BoxDecoration(
// // //                             color: Colors.blue,
// // //                             borderRadius: BorderRadius.circular(12),
// // //                           ),
// // //                           child: Row(
// // //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                             children: [
// // //                               Row(
// // //                                 children: [
// // //                                   Icon(Icons.check, color: Colors.white),
// // //                                   SizedBox(width: 10),
// // //                                   Column(
// // //                                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                                     children: [
// // //                                       Text(
// // //                                         item['selectedArea'] ?? 'Unknown Area',
// // //                                         style: TextStyle(
// // //                                           color: Colors.white,
// // //                                           fontWeight: FontWeight.bold,
// // //                                           fontSize: 16,
// // //                                         ),
// // //                                       ),
// // //                                       Text(
// // //                                         'Gas Type: ${item['selectedGasType'] ?? 'Unknown'}',
// // //                                         style: TextStyle(
// // //                                           color: Colors.white70,
// // //                                           fontSize: 14,
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                               Text(
// // //                                 item['status'] ?? 'In Progress', // عرض الحالة من Firestore
// // //                                 style: TextStyle(
// // //                                   color: Colors.white,
// // //                                   fontWeight: FontWeight.bold,
// // //                                   fontSize: 14,
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         );
// // //                       },
// // //                     );
// // //                   },
// // //                 ),
// // //               ),
// // //             ],

// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'dart:io';

// // // class History extends StatelessWidget {
// // //   const History({super.key});

// // //   // دالة لجلب بيانات التاريخ من Firestore
// // //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// // //     return FirebaseFirestore.instance
// // //         .collection('History')
// // //         .orderBy('timestamp', descending: true)
// // //         .snapshots()
// // //         .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       body: SafeArea(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               // Top Row (Profile Image, Name, Icons)
// // //               Row(
// // //                 children: [
// // //                   CircleAvatar(
// // //                     radius: 30,
// // //                     backgroundImage: AssetImage('assets/images/employeeIMG.png'), // استبدال بالصورة المناسبة
// // //                   ),
// // //                   SizedBox(width: 12),
// // //                   Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       Text(
// // //                         'Hello, Shakir',
// // //                         style: TextStyle(
// // //                           fontSize: 18,
// // //                           fontWeight: FontWeight.bold,
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   ElevatedButton(
// // //                     onPressed: null,
// // //                     style: ElevatedButton.styleFrom(
// // //                       backgroundColor: Colors.blue,
// // //                       shape: RoundedRectangleBorder(
// // //                         borderRadius: BorderRadius.circular(12),
// // //                       ),
// // //                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// // //                     ),
// // //                     child: Text('History', style: TextStyle(fontSize: 16)),
// // //                   ),
// // //                   IconButton(
// // //                     icon: Icon(Icons.filter_alt_outlined, color: Colors.blue, size: 30),
// // //                     onPressed: () {
// // //                       // تنفيذ التصفية
// // //                     },
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Expanded(
// // //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// // //                   stream: fetchHistoryItems(),
// // //                   builder: (context, snapshot) {
// // //                     if (snapshot.connectionState == ConnectionState.waiting) {
// // //                       return Center(child: CircularProgressIndicator());
// // //                     }
// // //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //                       return Center(child: Text('No history records found.'));
// // //                     }

// // //                     final historyItems = snapshot.data!;

// // //                     return ListView.builder(
// // //                       itemCount: historyItems.length,
// // //                       itemBuilder: (context, index) {
// // //                         final item = historyItems[index];
// // //                         return Container(
// // //                           margin: EdgeInsets.symmetric(vertical: 8),
// // //                           padding: EdgeInsets.all(12),
// // //                           decoration: BoxDecoration(
// // //                             color: Colors.blue,
// // //                             borderRadius: BorderRadius.circular(12),
// // //                           ),
// // //                           child: Column(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Row(
// // //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                                 children: [
// // //                                   Row(
// // //                                     children: [
// // //                                       Icon(Icons.check, color: Colors.white),
// // //                                       SizedBox(width: 10),
// // //                                       Column(
// // //                                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                                         children: [
// // //                                           Text(
// // //                                             item['selectedArea'] ?? 'Unknown Area',
// // //                                             style: TextStyle(
// // //                                               color: Colors.white,
// // //                                               fontWeight: FontWeight.bold,
// // //                                               fontSize: 16,
// // //                                             ),
// // //                                           ),
// // //                                           Text(
// // //                                             'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
// // //                                             style: TextStyle(
// // //                                               color: Colors.white70,
// // //                                               fontSize: 14,
// // //                                             ),
// // //                                           ),
// // //                                         ],
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                   Text(
// // //                                     item['status'] ?? 'In Progress', // عرض الحالة من Firestore
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontWeight: FontWeight.bold,
// // //                                       fontSize: 14,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                               if (item['imagePath'] != null)
// // //                                 Padding(
// // //                                   padding: const EdgeInsets.only(top: 8.0),
// // //                                   child: GestureDetector(
// // //                                     onTap: () {
// // //                                       showDialog(
// // //                                         context: context,
// // //                                         builder: (context) => Dialog(
// // //                                           child: Image.file(
// // //                                             File(item['imagePath']),
// // //                                             fit: BoxFit.cover,
// // //                                           ),
// // //                                         ),
// // //                                       );
// // //                                     },
// // //                                     child: Container(
// // //                                       height: 100,
// // //                                       decoration: BoxDecoration(
// // //                                         borderRadius: BorderRadius.circular(8),
// // //                                         border: Border.all(color: Colors.white, width: 2),
// // //                                       ),
// // //                                       child: ClipRRect(
// // //                                         borderRadius: BorderRadius.circular(8),
// // //                                         child: Image.file(
// // //                                           File(item['imagePath']),
// // //                                           fit: BoxFit.cover,
// // //                                         ),
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                 ),
// // //                             ],
// // //                           ),
// // //                         );
// // //                       },
// // //                     );
// // //                   },
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // // }
// // // import 'package:cached_network_image/cached_network_image.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'dart:io';
// // // import 'package:intl/intl.dart';

// // // class History extends StatelessWidget {
// // //   const History({super.key});

// // //   // Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// // //   //   return FirebaseFirestore.instance
// // //   //       .collection('History')
// // //   //       .orderBy('timestamp', descending: true)
         
// // //   //       .snapshots()
// // //   //       .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// // //   // }

// // // Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// // //   return FirebaseFirestore.instance
// // //       .collection('History')
// // //       .where('status', isEqualTo: 'Updated') // جلب السجلات التي حالتها Updated فقط
// // //       .orderBy('timestamp', descending: true) // ترتيب النتائج تنازليًا حسب timestamp
// // //       .snapshots()
// // //       .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// // // }




// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.grey[100],
// // //       body: SafeArea(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               // Top Row (Profile Image, Name, Icons)
// // //               Row(
// // //                 children: [
// // //                   CircleAvatar(
// // //                     radius: 30,
// // //                     backgroundImage:
// // //                         AssetImage('assets/images/employeeIMG.png'), //
// // //                   ),
// // //                   SizedBox(width: 12),
// // //                   Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       Text(
// // //                         'Hello, Shakir',
// // //                         style: TextStyle(
// // //                           fontSize: 22,
// // //                           fontWeight: FontWeight.bold,
// // //                           color: Colors.black87,
// // //                         ),
// // //                       ),
// // //                       Text(
// // //                         'View your incident history',
// // //                         style: TextStyle(
// // //                           fontSize: 16,
// // //                           color: Colors.grey[700],
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   ElevatedButton(
// // //                     onPressed: null,
// // //                     style: ElevatedButton.styleFrom(
// // //                       backgroundColor: Colors.blueAccent,
// // //                       shape: RoundedRectangleBorder(
// // //                         borderRadius: BorderRadius.circular(12),
// // //                       ),
// // //                       padding:
// // //                           EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// // //                     ),
// // //                     child: Text('History',
// // //                         style: TextStyle(
// // //                             fontSize: 16,
// // //                             color: const Color.fromARGB(255, 22, 118, 227))),
// // //                   ),
// // //                   IconButton(
// // //                     icon: Icon(Icons.filter_alt_outlined,
// // //                         color: Colors.blueAccent, size: 30),
// // //                     onPressed: () {
// // //                       // تنفيذ التصفية
// // //                     },
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Expanded(
// // //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// // //                   stream: fetchHistoryItems(),
// // //                   builder: (context, snapshot) {
// // //                     if (snapshot.connectionState == ConnectionState.waiting) {
// // //                       return Center(child: CircularProgressIndicator());
// // //                     }
// // //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //                       return Center(
// // //                           child: Text('No history records found.',
// // //                               style: TextStyle(
// // //                                   color: Colors.grey[600], fontSize: 16)));
// // //                     }

// // //                     final historyItems = snapshot.data!;

// // //                     return ListView.builder(
// // //                       itemCount: historyItems.length,
// // //                       itemBuilder: (context, index) {
// // //                         final item = historyItems[index];
// // //                         final timestamp = item['timestamp'] != null
// // //                             ? (item['timestamp'] as Timestamp).toDate()
// // //                             : null;
// // //                         final formattedDate = timestamp != null
// // //                             ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
// // //                             : 'Unknown Date';

// // //                         final String image = item["imageUrl"];
// // //                         print(image);

// // //                         return Container(
// // //                           margin: EdgeInsets.symmetric(vertical: 8),
// // //                           padding: EdgeInsets.all(16),
// // //                           decoration: BoxDecoration(
// // //                             color: Colors.white,
// // //                             borderRadius: BorderRadius.circular(12),
// // //                             boxShadow: [
// // //                               BoxShadow(
// // //                                 color: Colors.black26,
// // //                                 blurRadius: 6,
// // //                                 offset: Offset(0, 3),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                           child: Column(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Row(
// // //                                 mainAxisAlignment:
// // //                                     MainAxisAlignment.spaceBetween,
// // //                                 children: [
// // //                                   Row(
// // //                                     children: [
// // //                                       CachedNetworkImage(
// // //                                         imageUrl: image,
// // //                                         height: 50,
// // //                                         width: 50,
// // //                                       ),
// // //                                       Icon(Icons.warning_amber_rounded,
// // //                                           color: Colors.orangeAccent),
// // //                                       SizedBox(width: 10),
// // //                                       Column(
// // //                                         crossAxisAlignment:
// // //                                             CrossAxisAlignment.start,
// // //                                         children: [
// // //                                           Text(
// // //                                             item['selectedArea'] ?? 'Area A ',
// // //                                             style: TextStyle(
// // //                                               color: Colors.black87,
// // //                                               fontWeight: FontWeight.bold,
// // //                                               fontSize: 18,
// // //                                             ),
// // //                                           ),
// // //                                           Text(
// // //                                             'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
// // //                                             style: TextStyle(
// // //                                               color: Colors.grey[800],
// // //                                               fontSize: 14,
// // //                                             ),
// // //                                           ),
// // //                                           Text(
// // //                                             'Date: $formattedDate',
// // //                                             style: TextStyle(
// // //                                               color: Colors.grey[600],
// // //                                               fontSize: 12,
// // //                                             ),
// // //                                           ),
// // //                                         ],
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                   Text(
// // //                                     item['status'] ?? 'In Progress',
// // //                                     style: TextStyle(
// // //                                       color: item['status'] == 'Updated'
// // //                                           ? Colors.green
// // //                                           : Colors.red,
// // //                                       fontWeight: FontWeight.bold,
// // //                                       fontSize: 14,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                               if (item['imagePath'] != null)
// // //                                 Padding(
// // //                                   padding: const EdgeInsets.only(top: 8.0),
// // //                                   child: GestureDetector(
// // //                                     onTap: () {
// // //                                       showDialog(
// // //                                         context: context,
// // //                                         builder: (context) => Dialog(
// // //                                           child: ClipRRect(
// // //                                             borderRadius:
// // //                                                 BorderRadius.circular(12),
// // //                                             child: Image.file(
// // //                                               File(item['imagePath']),
// // //                                               fit: BoxFit.cover,
// // //                                             ),
// // //                                           ),
// // //                                         ),
// // //                                       );
// // //                                     },
// // //                                     child: Container(
// // //                                       height: 120,
// // //                                       decoration: BoxDecoration(
// // //                                         borderRadius: BorderRadius.circular(8),
// // //                                         boxShadow: [
// // //                                           BoxShadow(
// // //                                             color: Colors.black12,
// // //                                             blurRadius: 4,
// // //                                             offset: Offset(0, 2),
// // //                                           ),
// // //                                         ],
// // //                                       ),
// // //                                       child: ClipRRect(
// // //                                         borderRadius: BorderRadius.circular(8),
// // //                                         child: Image.file(
// // //                                           File(item['imagePath']),
// // //                                           fit: BoxFit.cover,
// // //                                         ),
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                 ),
// // //                             ],
// // //                           ),
// // //                         );
// // //                       },
// // //                     );
// // //                   },
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }




// // // import 'package:cached_network_image/cached_network_image.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:intl/intl.dart';

// // // class History extends StatelessWidget {
// // //   const History({super.key});

// // //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// // //     return FirebaseFirestore.instance
// // //         .collection('History')
// // //         .where('status', isEqualTo: 'Updated') // جلب السجلات التي حالتها Updated فقط
// // //         .orderBy('timestamp', descending: true) // ترتيب النتائج تنازليًا حسب timestamp
// // //         .snapshots()
// // //         .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.grey[100],
// // //       body: SafeArea(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               // Top Row (Profile Image, Name, Icons)
// // //               Row(
// // //                 children: [
// // //                   CircleAvatar(
// // //                     radius: 30,
// // //                     backgroundImage: AssetImage('assets/images/employeeIMG.png'),
// // //                   ),
// // //                   SizedBox(width: 12),
// // //                   Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       Text(
// // //                         'Hello, Shakir',
// // //                         style: TextStyle(
// // //                           fontSize: 22,
// // //                           fontWeight: FontWeight.bold,
// // //                           color: Colors.black87,
// // //                         ),
// // //                       ),
// // //                       Text(
// // //                         'View your incident history',
// // //                         style: TextStyle(
// // //                           fontSize: 16,
// // //                           color: Colors.grey[700],
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   ElevatedButton(
// // //                     onPressed: null,
// // //                     style: ElevatedButton.styleFrom(
// // //                       backgroundColor: Colors.blueAccent,
// // //                       shape: RoundedRectangleBorder(
// // //                         borderRadius: BorderRadius.circular(12),
// // //                       ),
// // //                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// // //                     ),
// // //                     child: Text('History',
// // //                         style: TextStyle(
// // //                             fontSize: 16,
// // //                             color: const Color.fromARGB(255, 22, 118, 227))),
// // //                   ),
// // //                   IconButton(
// // //                     icon: Icon(Icons.filter_alt_outlined,
// // //                         color: Colors.blueAccent, size: 30),
// // //                     onPressed: () {
// // //                       // تنفيذ التصفية
// // //                     },
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Expanded(
// // //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// // //                   stream: fetchHistoryItems(),
// // //                   builder: (context, snapshot) {
// // //                     if (snapshot.connectionState == ConnectionState.waiting) {
// // //                       return Center(child: CircularProgressIndicator());
// // //                     }
// // //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //                       return Center(
// // //                           child: Text('No history records found.',
// // //                               style: TextStyle(
// // //                                   color: Colors.grey[600], fontSize: 16)));
// // //                     }

// // //                     final historyItems = snapshot.data!;

// // //                     return ListView.builder(
// // //                       itemCount: historyItems.length,
// // //                       itemBuilder: (context, index) {
// // //                         final item = historyItems[index];
// // //                         final timestamp = item['timestamp'] != null
// // //                             ? (item['timestamp'] as Timestamp).toDate()
// // //                             : null;
// // //                         final formattedDate = timestamp != null
// // //                             ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
// // //                             : 'Unknown Date';

// // //                         final String thermalImage = item["imageUrl"];
// // //                         final String normalImage = item["normalImage"] ?? 'assets/images/normal.png'; // الصورة العادية الافتراضية

// // //                         return Container(
// // //                           margin: EdgeInsets.symmetric(vertical: 8),
// // //                           decoration: BoxDecoration(
// // //                             color: Colors.white,
// // //                             borderRadius: BorderRadius.circular(12),
// // //                             boxShadow: [
// // //                               BoxShadow(
// // //                                 color: Colors.black26,
// // //                                 blurRadius: 6,
// // //                                 offset: Offset(0, 3),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                           child: ExpansionTile(
// // //                             title: Row(
// // //                               children: [
// // //                                 Icon(Icons.warning_amber_rounded,
// // //                                     color: Colors.orangeAccent),
// // //                                 SizedBox(width: 10),
// // //                                 Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     Text(
// // //                                       item['selectedArea'] ?? 'Area A ',
// // //                                       style: TextStyle(
// // //                                         color: Colors.black87,
// // //                                         fontWeight: FontWeight.bold,
// // //                                         fontSize: 18,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
// // //                                       style: TextStyle(
// // //                                         color: Colors.grey[800],
// // //                                         fontSize: 14,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Date: $formattedDate',
// // //                                       style: TextStyle(
// // //                                         color: Colors.grey[600],
// // //                                         fontSize: 12,
// // //                                       ),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             children: [
// // //                               // عرض الصور عند توسيع البوتن
// // //                               GestureDetector(
// // //                                 onTap: () {
// // //                                   showDialog(
// // //                                     context: context,
// // //                                     builder: (context) => Dialog(
// // //                                       child: CachedNetworkImage(
// // //                                         imageUrl: thermalImage,
// // //                                         fit: BoxFit.cover,
// // //                                       ),
// // //                                     ),
// // //                                   );
// // //                                 },
// // //                                 child: CachedNetworkImage(
// // //                                   imageUrl: thermalImage,
// // //                                   height: 100,
// // //                                   width: double.infinity,
// // //                                   fit: BoxFit.cover,
// // //                                   placeholder: (context, url) =>
// // //                                       const CircularProgressIndicator(),
// // //                                   errorWidget: (context, url, error) => Container(
// // //                                     height: 100,
// // //                                     width: double.infinity,
// // //                                     color: Colors.grey,
// // //                                     child: const Center(
// // //                                         child: Text(
// // //                                             "Thermal image not available")),
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               const SizedBox(height: 10),
// // //                               GestureDetector(
// // //                                 onTap: () {
// // //                                   showDialog(
// // //                                     context: context,
// // //                                     builder: (context) => Dialog(
// // //                                       child: Image.asset(
// // //                                         normalImage,
// // //                                         fit: BoxFit.cover,
// // //                                       ),
// // //                                     ),
// // //                                   );
// // //                                 },
// // //                                 child: Image.asset(
// // //                                   normalImage,
// // //                                   height: 100,
// // //                                   width: double.infinity,
// // //                                   fit: BoxFit.cover,
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         );
// // //                       },
// // //                     );
// // //                   },
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // import 'package:cached_network_image/cached_network_image.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:firebase_auth/firebase_auth.dart';
// // // import 'package:intl/intl.dart';


// // // class History extends StatelessWidget {
// // //   const History({super.key});

// // //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// // //     return FirebaseFirestore.instance
// // //         .collection('History')
// // //         .where('status', isEqualTo: 'Updated') // جلب السجلات التي حالتها Updated فقط
// // //         .orderBy('timestamp', descending: true) // ترتيب النتائج تنازليًا حسب timestamp
// // //         .snapshots()
// // //         .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// // //   }

// // //   Future<String?> getUserName() async {
// // //     User? user = FirebaseAuth.instance.currentUser;
// // //     if (user != null) {
// // //       DocumentSnapshot userData =
// // //           await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
// // //       if (userData.exists) {
// // //         return userData['username'] ?? 'User';
// // //       }
// // //     }
// // //     return 'User'; // Default name if no user data found
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.grey[100],
// // //       body: SafeArea(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               FutureBuilder<String?>(
// // //                 future: getUserName(),
// // //                 builder: (context, snapshot) {
// // //                   String userName = 'User';
// // //                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
// // //                     userName = snapshot.data!;
// // //                   }
// // //                   return Row(
// // //                     children: [
// // //                       CircleAvatar(
// // //                         radius: 30,
// // //                         backgroundImage: AssetImage('assets/images/employeeIMG.png'),
// // //                       ),
// // //                       SizedBox(width: 12),
// // //                       Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'Hello, $userName',
// // //                             style: TextStyle(
// // //                               fontSize: 22,
// // //                               fontWeight: FontWeight.bold,
// // //                               color: Colors.black87,
// // //                             ),
// // //                           ),
// // //                           Text(
// // //                             'View your incident history',
// // //                             style: TextStyle(
// // //                               fontSize: 16,
// // //                               color: Colors.grey[700],
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ],
// // //                   );
// // //                 },
// // //               ),
// // //               SizedBox(height: 20),
// // //               // باقي الكود...
// // //               Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   ElevatedButton(
// // //                     onPressed: null,
// // //                     style: ElevatedButton.styleFrom(
// // //                       backgroundColor: Colors.blueAccent,
// // //                       shape: RoundedRectangleBorder(
// // //                         borderRadius: BorderRadius.circular(12),
// // //                       ),
// // //                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// // //                     ),
// // //                     child: Text('History',
// // //                         style: TextStyle(
// // //                             fontSize: 16,
// // //                             color: const Color.fromARGB(255, 22, 118, 227))),
// // //                   ),
// // //                   IconButton(
// // //                     icon: Icon(Icons.filter_alt_outlined,
// // //                         color: Colors.blueAccent, size: 30),
// // //                     onPressed: () {
// // //                       // تنفيذ التصفية
// // //                     },
// // //                   ),
// // //                 ],
// // //               ),
// // //               SizedBox(height: 20),
// // //               Expanded(
// // //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// // //                   stream: fetchHistoryItems(),
// // //                   builder: (context, snapshot) {
// // //                     if (snapshot.connectionState == ConnectionState.waiting) {
// // //                       return Center(child: CircularProgressIndicator());
// // //                     }
// // //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //                       return Center(
// // //                           child: Text('No history records found.',
// // //                               style: TextStyle(
// // //                                   color: Colors.grey[600], fontSize: 16)));
// // //                     }

// // //                     final historyItems = snapshot.data!;

// // //                     return ListView.builder(
// // //                       itemCount: historyItems.length,
// // //                       itemBuilder: (context, index) {
// // //                         final item = historyItems[index];
// // //                         final timestamp = item['timestamp'] != null
// // //                             ? (item['timestamp'] as Timestamp).toDate()
// // //                             : null;
// // //                         final formattedDate = timestamp != null
// // //                             ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
// // //                             : 'Unknown Date';

// // //                         final String thermalImage = item["imageUrl"];
// // //                         final String normalImage = item["normalImage"] ?? 'assets/images/normal.png'; // الصورة العادية الافتراضية

// // //                         return Container(
// // //                           margin: EdgeInsets.symmetric(vertical: 8),
// // //                           decoration: BoxDecoration(
// // //                             color: Colors.white,
// // //                             borderRadius: BorderRadius.circular(12),
// // //                             boxShadow: [
// // //                               BoxShadow(
// // //                                 color: Colors.black26,
// // //                                 blurRadius: 6,
// // //                                 offset: Offset(0, 3),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                           child: ExpansionTile(
// // //                             title: Row(
// // //                               children: [
// // //                                 Icon(Icons.warning_amber_rounded,
// // //                                     color: Colors.orangeAccent),
// // //                                 SizedBox(width: 10),
// // //                                 Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     Text(
// // //                                       item['selectedArea'] ?? 'Area A ',
// // //                                       style: TextStyle(
// // //                                         color: Colors.black87,
// // //                                         fontWeight: FontWeight.bold,
// // //                                         fontSize: 18,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
// // //                                       style: TextStyle(
// // //                                         color: Colors.grey[800],
// // //                                         fontSize: 14,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Date: $formattedDate',
// // //                                       style: TextStyle(
// // //                                         color: Colors.grey[600],
// // //                                         fontSize: 12,
// // //                                       ),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             children: [
// // //                               // عرض الصور عند توسيع البوتن
// // //                               GestureDetector(
// // //                                 onTap: () {
// // //                                   showDialog(
// // //                                     context: context,
// // //                                     builder: (context) => Dialog(
// // //                                       child: CachedNetworkImage(
// // //                                         imageUrl: thermalImage,
// // //                                         fit: BoxFit.cover,
// // //                                       ),
// // //                                     ),
// // //                                   );
// // //                                 },
// // //                                 child: CachedNetworkImage(
// // //                                   imageUrl: thermalImage,
// // //                                   height: 100,
// // //                                   width: double.infinity,
// // //                                   fit: BoxFit.cover,
// // //                                   placeholder: (context, url) =>
// // //                                       const CircularProgressIndicator(),
// // //                                   errorWidget: (context, url, error) => Container(
// // //                                     height: 100,
// // //                                     width: double.infinity,
// // //                                     color: Colors.grey,
// // //                                     child: const Center(
// // //                                         child: Text(
// // //                                             "Thermal image not available")),
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               const SizedBox(height: 10),
// // //                               GestureDetector(
// // //                                 onTap: () {
// // //                                   showDialog(
// // //                                     context: context,
// // //                                     builder: (context) => Dialog(
// // //                                       child: Image.asset(
// // //                                         normalImage,
// // //                                         fit: BoxFit.cover,
// // //                                       ),
// // //                                     ),
// // //                                   );
// // //                                 },
// // //                                 child: Image.asset(
// // //                                   normalImage,
// // //                                   height: 100,
// // //                                   width: double.infinity,
// // //                                   fit: BoxFit.cover,
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         );
// // //                       },
// // //                     );
// // //                   },
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:intl/intl.dart';

// // class History extends StatefulWidget {
// //   const History({Key? key}) : super(key: key);

// //   @override
// //   State<History> createState() => _HistoryState();
// // }

// // class _HistoryState extends State<History> {
// //   bool _isDescending = true; // الترتيب الافتراضي: الأحدث إلى الأقدم

// //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// //     return FirebaseFirestore.instance
// //         .collection('History')
// //         .where('status', isEqualTo: 'Updated') // جلب السجلات مع الحالة "Updated"
// //         .orderBy('timestamp', descending: _isDescending) // الترتيب ديناميكي
// //         .snapshots()
// //         .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
// //   }

// //   Future<String?> getUserName() async {
// //     User? user = FirebaseAuth.instance.currentUser;
// //     if (user != null) {
// //       DocumentSnapshot userData =
// //           await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
// //       if (userData.exists) {
// //         return userData['username'] ?? 'User';
// //       }
// //     }
// //     return 'User';
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[100],
// //       body: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               FutureBuilder<String?>(
// //                 future: getUserName(),
// //                 builder: (context, snapshot) {
// //                   String userName = 'User';
// //                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
// //                     userName = snapshot.data!;
// //                   }
// //                   return Row(
// //                     children: [
// //                       CircleAvatar(
// //                         radius: 30,
// //                         backgroundImage: AssetImage('assets/images/11.png'),
// //                       ),
// //                       const SizedBox(width: 12),
// //                       Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'Hello, $userName',
// //                             style: TextStyle(
// //                               fontSize: 22,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                           Text(
// //                             'View your incident history',
// //                             style: TextStyle(
// //                               fontSize: 16,
// //                               color: Colors.grey[700],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   );
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: null,
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.blueAccent,
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(12),
// //                       ),
// //                       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// //                     ),
// //                     child: const Text(
// //                       'History',
// //                       style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 22, 118, 227)),
// //                     ),
// //                   ),
// //                   IconButton(
// //                     icon: Icon(
// //                       _isDescending ? Icons.arrow_downward : Icons.arrow_upward,
// //                       color: Colors.blueAccent,
// //                       size: 30,
// //                     ),
// //                     onPressed: () {
// //                       setState(() {
// //                         _isDescending = !_isDescending; // تبديل الترتيب
// //                       });
// //                     },
// //                   ),
// //                 ],
// //               ),
// //               const SizedBox(height: 20),
// //               Expanded(
// //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// //                   stream: fetchHistoryItems(),
// //                   builder: (context, snapshot) {
// //                     if (snapshot.connectionState == ConnectionState.waiting) {
// //                       return const Center(child: CircularProgressIndicator());
// //                     }
// //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                       return Center(
// //                         child: Text(
// //                           'No history records found.',
// //                           style: TextStyle(color: Colors.grey[600], fontSize: 16),
// //                         ),
// //                       );
// //                     }

// //                     final historyItems = snapshot.data!;
// //                     return ListView.builder(
// //                       itemCount: historyItems.length,
// //                       itemBuilder: (context, index) {
// //                         final item = historyItems[index];
// //                         final timestamp = item['timestamp'] != null
// //                             ? (item['timestamp'] as Timestamp).toDate()
// //                             : null;
// //                         final formattedDate = timestamp != null
// //                             ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
// //                             : 'Unknown Date';

// //                         final String thermalImage = item["imageUrl"];
// //                         final String normalImage = item["normalImage"] ??
// //                             'assets/images/normal.png'; // الصورة العادية الافتراضية

// //                         return Container(
// //                           margin: const EdgeInsets.symmetric(vertical: 8),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(12),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.black26,
// //                                 blurRadius: 6,
// //                                 offset: const Offset(0, 3),
// //                               ),
// //                             ],
// //                           ),
// //                           child: ExpansionTile(
// //                             title: Row(
// //                               children: [
// //                                 Icon(Icons.warning_amber_rounded,
// //                                     color: Colors.orangeAccent),
// //                                 const SizedBox(width: 10),
// //                                 Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     Text(
// //                                       item['selectedArea'] ?? 'Area A',
// //                                       style: TextStyle(
// //                                         color: Colors.black87,
// //                                         fontWeight: FontWeight.bold,
// //                                         fontSize: 18,
// //                                       ),
// //                                     ),
// //                                     Text(
// //                                       'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
// //                                       style: TextStyle(
// //                                         color: Colors.grey[800],
// //                                         fontSize: 14,
// //                                       ),
// //                                     ),
// //                                     Text(
// //                                       'Date: $formattedDate',
// //                                       style: TextStyle(
// //                                         color: Colors.grey[600],
// //                                         fontSize: 12,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ],
// //                             ),
// //                             children: [
// //                               GestureDetector(
// //                                 onTap: () {
// //                                   showDialog(
// //                                     context: context,
// //                                     builder: (context) => Dialog(
// //                                       child: CachedNetworkImage(
// //                                         imageUrl: thermalImage,
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                     ),
// //                                   );
// //                                 },
// //                                 child: CachedNetworkImage(
// //                                   imageUrl: thermalImage,
// //                                   height: 100,
// //                                   width: double.infinity,
// //                                   fit: BoxFit.cover,
// //                                   placeholder: (context, url) =>
// //                                       const CircularProgressIndicator(),
// //                                   errorWidget: (context, url, error) =>
// //                                       Container(
// //                                     height: 100,
// //                                     width: double.infinity,
// //                                     color: Colors.grey,
// //                                     child: const Center(
// //                                         child: Text("Thermal image not available")),
// //                                   ),
// //                                 ),
// //                               ),
// //                               const SizedBox(height: 10),
// //                               GestureDetector(
// //                                 onTap: () {
// //                                   showDialog(
// //                                     context: context,
// //                                     builder: (context) => Dialog(
// //                                       child: Image.asset(
// //                                         normalImage,
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                     ),
// //                                   );
// //                                 },
// //                                 child: Image.asset(
// //                                   normalImage,
// //                                   height: 100,
// //                                   width: double.infinity,
// //                                   fit: BoxFit.cover,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         );
// //                       },
// //                     );
// //                   },
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }



// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:intl/intl.dart';

// // class History extends StatefulWidget {
// //   const History({Key? key}) : super(key: key);

// //   @override
// //   State<History> createState() => _HistoryState();
// // }

// // class _HistoryState extends State<History> {
// //   String? _selectedFilter; // نوع الفلتر الحالي

// //   /// جلب بيانات السجلات
// //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// //     return FirebaseFirestore.instance
// //         .collection('History')
// //         .where('status', isEqualTo: 'Updated') // جلب السجلات مع الحالة "Updated"
// //         .snapshots()
// //         .map((snapshot) {
// //       List<Map<String, dynamic>> items =
// //           snapshot.docs.map((doc) => doc.data()).toList();

// //       // تطبيق الفلتر بناءً على النوع المحدد
// //      if (_selectedFilter != null && _selectedFilter != 'All') {
// //   items = items.where((item) {
// //     return item['predictionResult'] == _selectedFilter; // تصفية حسب النوع
// //   }).toList();
// // }


// //       return items;
// //     });
// //   }

// //   /// جلب اسم المستخدم الحالي
// //   Future<String?> getUserName() async {
// //     User? user = FirebaseAuth.instance.currentUser;
// //     if (user != null) {
// //       DocumentSnapshot userData =
// //           await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
// //       if (userData.exists) {
// //         return userData['username'] ?? 'User';
// //       }
// //     }
// //     return 'User';
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[100],
// //       body: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               FutureBuilder<String?>(
// //                 future: getUserName(),
// //                 builder: (context, snapshot) {
// //                   String userName = 'User';
// //                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
// //                     userName = snapshot.data!;
// //                   }
// //                   return Row(
// //                     children: [
// //                       CircleAvatar(
// //                         radius: 30,
// //                         backgroundImage: AssetImage('assets/images/11.png'),
// //                       ),
// //                       const SizedBox(width: 12),
// //                       Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'Hello, $userName',
// //                             style: TextStyle(
// //                               fontSize: 22,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                           Text(
// //                             'View your incident history',
// //                             style: TextStyle(
// //                               fontSize: 16,
// //                               color: Colors.grey[700],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   );
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: null,
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.blueAccent,
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(12),
// //                       ),
// //                       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// //                     ),
// //                     child: const Text(
// //                       'History',
// //                       style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 22, 118, 227)),
// //                     ),
// //                   ),
// //                  DropdownButton<String>(
// //   value: _selectedFilter,
// //   hint: Text(
// //     'Filter by Type',
// //     style: TextStyle(color: Colors.blueAccent),
// //   ),
// //   items: [
// //     DropdownMenuItem(
// //       value: 'All', // عرض جميع الحالات
// //       child: Text('All'),
// //     ),
// //     DropdownMenuItem(
// //       value: 'Gas Leak',
// //       child: Text('Gas Leak'),
// //     ),
// //     DropdownMenuItem(
// //       value: 'Smoke',
// //       child: Text('Smoke'),
// //     ),
// //     DropdownMenuItem(
// //       value: 'Gas and Smoke Leak',
// //       child: Text('Gas and Smoke Leak'),
// //     ),
// //   ],
// //   onChanged: (value) {
// //     setState(() {
// //       _selectedFilter = value; // تحديث الفلتر المختار
// //     });
// //   },
// // ),

// //                 ],
// //               ),
// //               const SizedBox(height: 20),
// //               Expanded(
// //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// //                   stream: fetchHistoryItems(),
// //                   builder: (context, snapshot) {
// //                     if (snapshot.connectionState == ConnectionState.waiting) {
// //                       return const Center(child: CircularProgressIndicator());
// //                     }
// //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                       return Center(
// //                         child: Text(
// //                           'No history records found.',
// //                           style: TextStyle(color: Colors.grey[600], fontSize: 16),
// //                         ),
// //                       );
// //                     }

// //                     final historyItems = snapshot.data!;
// //                     return ListView.builder(
// //                       itemCount: historyItems.length,
// //                       itemBuilder: (context, index) {
// //                         final item = historyItems[index];
// //                         final timestamp = item['timestamp'] != null
// //                             ? (item['timestamp'] as Timestamp).toDate()
// //                             : null;
// //                         final formattedDate = timestamp != null
// //                             ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
// //                             : 'Unknown Date';

// //                         final String thermalImage = item["imageUrl"];
// //                         final String normalImage = item["normalImage"] ??
// //                             'assets/images/normal.png'; // الصورة العادية الافتراضية

// //                         return Container(
// //                           margin: const EdgeInsets.symmetric(vertical: 8),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(12),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.black26,
// //                                 blurRadius: 6,
// //                                 offset: const Offset(0, 3),
// //                               ),
// //                             ],
// //                           ),
// //                           child: ExpansionTile(
// //                             title: Row(
// //                               children: [
// //                                 Icon(Icons.warning_amber_rounded,
// //                                     color: Colors.orangeAccent),
// //                                 const SizedBox(width: 10),
// //                                 Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     Text(
// //                                       item['selectedArea'] ?? 'Area A',
// //                                       style: TextStyle(
// //                                         color: Colors.black87,
// //                                         fontWeight: FontWeight.bold,
// //                                         fontSize: 18,
// //                                       ),
// //                                     ),
// //                                     Text(
// //                                       'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
// //                                       style: TextStyle(
// //                                         color: Colors.grey[800],
// //                                         fontSize: 14,
// //                                       ),
// //                                     ),
// //                                     Text(
// //                                       'Date: $formattedDate',
// //                                       style: TextStyle(
// //                                         color: Colors.grey[600],
// //                                         fontSize: 12,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ],
// //                             ),
// //                             children: [
// //                               GestureDetector(
// //                                 onTap: () {
// //                                   showDialog(
// //                                     context: context,
// //                                     builder: (context) => Dialog(
// //                                       child: CachedNetworkImage(
// //                                         imageUrl: thermalImage,
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                     ),
// //                                   );
// //                                 },
// //                                 child: CachedNetworkImage(
// //                                   imageUrl: thermalImage,
// //                                   height: 100,
// //                                   width: double.infinity,
// //                                   fit: BoxFit.cover,
// //                                   placeholder: (context, url) =>
// //                                       const CircularProgressIndicator(),
// //                                   errorWidget: (context, url, error) =>
// //                                       Container(
// //                                     height: 100,
// //                                     width: double.infinity,
// //                                     color: Colors.grey,
// //                                     child: const Center(
// //                                         child: Text("Thermal image not available")),
// //                                   ),
// //                                 ),
// //                               ),
// //                               const SizedBox(height: 10),
// //                               GestureDetector(
// //                                 onTap: () {
// //                                   showDialog(
// //                                     context: context,
// //                                     builder: (context) => Dialog(
// //                                       child: Image.asset(
// //                                         normalImage,
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                     ),
// //                                   );
// //                                 },
// //                                 child: Image.asset(
// //                                   normalImage,
// //                                   height: 100,
// //                                   width: double.infinity,
// //                                   fit: BoxFit.cover,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         );
// //                       },
// //                     );
// //                   },
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }




// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:intl/intl.dart';

// // class History extends StatefulWidget {
// //   const History({Key? key}) : super(key: key);

// //   @override
// //   State<History> createState() => _HistoryState();
// // }

// // class _HistoryState extends State<History> {
// //   String? _selectedFilter; // نوع الفلتر الحالي

// //   /// جلب بيانات السجلات
// //   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
// //     return FirebaseFirestore.instance
// //         .collection('History')
// //         .where('status', isEqualTo: 'Updated') // جلب السجلات مع الحالة "Updated"
// //         .snapshots()
// //         .map((snapshot) {
// //       List<Map<String, dynamic>> items =
// //           snapshot.docs.map((doc) => doc.data()).toList();

// //       // تطبيق الفلتر بناءً على النوع المحدد
// //       if (_selectedFilter != null && _selectedFilter != 'All') {
// //         items = items.where((item) {
// //           return item['predictionResult'] == _selectedFilter; // تصفية حسب النوع
// //         }).toList();
// //       }

// //       return items;
// //     });
// //   }

// //   /// جلب اسم المستخدم الحالي
// //   Future<String?> getUserName() async {
// //     User? user = FirebaseAuth.instance.currentUser;
// //     if (user != null) {
// //       DocumentSnapshot userData =
// //           await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
// //       if (userData.exists) {
// //         return userData['username'] ?? 'User';
// //       }
// //     }
// //     return 'User';
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[100],
// //       body: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               FutureBuilder<String?>(
// //                 future: getUserName(),
// //                 builder: (context, snapshot) {
// //                   String userName = 'User';
// //                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
// //                     userName = snapshot.data!;
// //                   }
// //                   return Row(
// //                     children: [
// //                       CircleAvatar(
// //                         radius: 30,
// //                         backgroundImage: AssetImage('assets/images/11.png'),
// //                       ),
// //                       const SizedBox(width: 12),
// //                       Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'Hello, $userName',
// //                             style: TextStyle(
// //                               fontSize: 22,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                           Text(
// //                             'View your incident history',
// //                             style: TextStyle(
// //                               fontSize: 16,
// //                               color: Colors.grey[700],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   );
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: null,
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.blueAccent,
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(12),
// //                       ),
// //                       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
// //                     ),
// //                     child: const Text(
// //                       'History',
// //                       style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 22, 118, 227)),
// //                     ),
// //                   ),
// //                   DropdownButton<String>(
// //                     value: _selectedFilter,
// //                     hint: Text(
// //                       'Filter by Type',
// //                       style: TextStyle(color: Colors.blueAccent),
// //                     ),
// //                     items: [
// //                       DropdownMenuItem(
// //                         value: 'All',
// //                         child: Text('All'),
// //                       ),
// //                       DropdownMenuItem(
// //                         value: 'Gas Leak',
// //                         child: Text('Gas Leak'),
// //                       ),
// //                       DropdownMenuItem(
// //                         value: 'Smoke',
// //                         child: Text('Smoke'),
// //                       ),
// //                       DropdownMenuItem(
// //                         value: 'Gas,Smoke Leak',
// //                         child: Text('Gas and Smoke Leak'),
// //                       ),
// //                     ],
// //                     onChanged: (value) {
// //                       setState(() {
// //                         _selectedFilter = value; // تحديث الفلتر المختار
// //                       });
// //                     },
// //                   ),
// //                 ],
// //               ),
// //               const SizedBox(height: 20),
// //               Expanded(
// //                 child: StreamBuilder<List<Map<String, dynamic>>>(
// //                   stream: fetchHistoryItems(),
// //                   builder: (context, snapshot) {
// //                     if (snapshot.connectionState == ConnectionState.waiting) {
// //                       return const Center(child: CircularProgressIndicator());
// //                     }
// //                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                       return Center(
// //                         child: Text(
// //                           'No history records found.',
// //                           style: TextStyle(color: Colors.grey[600], fontSize: 16),
// //                         ),
// //                       );
// //                     }

// //                     final historyItems = snapshot.data!;
// //                     return ListView.builder(
// //                       itemCount: historyItems.length,
// //                       itemBuilder: (context, index) {
// //                         final item = historyItems[index];
// //                         final timestamp = item['timestamp'] != null
// //                             ? (item['timestamp'] as Timestamp).toDate()
// //                             : null;
// //                         final formattedDate = timestamp != null
// //                             ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
// //                             : 'Unknown Date';

// //                         final String area = item["area"] ?? 'Unknown Area'; // استخدام area من Firestore
// //                         final String thermalImage =
// //                             item["imageUrl"] ?? 'assets/images/default.png'; // الصورة الحرارية
// //                         final String normalImage = item["normalImageUrl"] ?? // الصورة العادية من Firestore
// //                             'https://via.placeholder.com/150';

// //                         return Container(
// //                           margin: const EdgeInsets.symmetric(vertical: 8),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(12),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.black26,
// //                                 blurRadius: 6,
// //                                 offset: const Offset(0, 3),
// //                               ),
// //                             ],
// //                           ),
// //                           child: ExpansionTile(
// //                             title: Row(
// //                               children: [
// //                                 Icon(Icons.warning_amber_rounded,
// //                                     color: Colors.orangeAccent),
// //                                 const SizedBox(width: 10),
// //                                 Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     Text(
// //                                       area,
// //                                       style: TextStyle(
// //                                         color: Colors.black87,
// //                                         fontWeight: FontWeight.bold,
// //                                         fontSize: 18,
// //                                       ),
// //                                     ),
// //                                     Text(
// //                                       'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
// //                                       style: TextStyle(
// //                                         color: Colors.grey[800],
// //                                         fontSize: 14,
// //                                       ),
// //                                     ),
// //                                     Text(
// //                                       'Date: $formattedDate',
// //                                       style: TextStyle(
// //                                         color: Colors.grey[600],
// //                                         fontSize: 12,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ],
// //                             ),
// //                             children: [
// //                               CachedNetworkImage(
// //                                 imageUrl: thermalImage,
// //                                 height: 100,
// //                                 width: double.infinity,
// //                                 fit: BoxFit.cover,
// //                                 placeholder: (context, url) =>
// //                                     const CircularProgressIndicator(),
// //                                 errorWidget: (context, url, error) =>
// //                                     Container(
// //                                   height: 100,
// //                                   width: double.infinity,
// //                                   color: Colors.grey,
// //                                   child: const Center(
// //                                       child: Text("Thermal image not available")),
// //                                 ),
// //                               ),
// //                               const SizedBox(height: 10),
// //                               CachedNetworkImage(
// //                                 imageUrl: normalImage,
// //                                 height: 100,
// //                                 width: double.infinity,
// //                                 fit: BoxFit.cover,
// //                                 placeholder: (context, url) =>
// //                                     const CircularProgressIndicator(),
// //                                 errorWidget: (context, url, error) =>
// //                                     Container(
// //                                   height: 100,
// //                                   width: double.infinity,
// //                                   color: Colors.grey,
// //                                   child: const Center(
// //                                       child: Text("Normal image not available")),
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         );
// //                       },
// //                     );
// //                   },
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }



// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:intl/intl.dart';

// class History extends StatefulWidget {
//   const History({Key? key}) : super(key: key);

//   @override
//   State<History> createState() => _HistoryState();
// }

// class _HistoryState extends State<History> {
//   String? _selectedFilter;

//   Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
//     return FirebaseFirestore.instance
//         .collection('History')
//         .where('status', isEqualTo: 'Updated')
//         .snapshots()
//         .map((snapshot) {
//       List<Map<String, dynamic>> items =
//           snapshot.docs.map((doc) => doc.data()).toList();

//       if (_selectedFilter != null && _selectedFilter != 'All') {
//         items = items.where((item) {
//           return item['predictionResult'] == _selectedFilter;
//         }).toList();
//       }

//       return items;
//     });
//   }

//   Future<String?> getUserName() async {
//     User? user = FirebaseAuth.instance.currentUser;
//     if (user != null) {
//       DocumentSnapshot userData =
//           await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
//       if (userData.exists) {
//         return userData['username'] ?? 'User';
//       }
//     }
//     return 'User';
//   }

//   void _showImageDialog(String imageUrl) {
//     showDialog(
//       context: context,
//       builder: (context) => Dialog(
//         child: GestureDetector(
//           onTap: () => Navigator.pop(context),
//           child: InteractiveViewer(
//             child: CachedNetworkImage(
//               imageUrl: imageUrl,
//               fit: BoxFit.contain,
//               placeholder: (context, url) => const CircularProgressIndicator(),
//               errorWidget: (context, url, error) => const Center(
//                 child: Text("Image not available"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               FutureBuilder<String?>(
//                 future: getUserName(),
//                 builder: (context, snapshot) {
//                   String userName = 'User';
//                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
//                     userName = snapshot.data!;
//                   }
//                   return Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 30,
//                         backgroundImage: AssetImage('assets/images/11.png'),
//                       ),
//                       const SizedBox(width: 12),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Hello, $userName',
//                             style: TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87,
//                             ),
//                           ),
//                           Text(
//                             'View your incident history',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(
//                     onPressed: null,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blueAccent,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                     ),
//                     child: const Text(
//                       'History',
//                       style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 22, 118, 227)),
//                     ),
//                   ),
//                   DropdownButton<String>(
//                     value: _selectedFilter,
//                     hint: Text(
//                       'Filter by Type',
//                       style: TextStyle(color: Colors.blueAccent),
//                     ),
//                     items: [
//                       DropdownMenuItem(
//                         value: 'All',
//                         child: Text('All'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Gas Leak',
//                         child: Text('Gas Leak'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Smoke',
//                         child: Text('Smoke'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Gas,Smoke Leak',
//                         child: Text('Gas and Smoke Leak'),
//                       ),
//                     ],
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedFilter = value;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Expanded(
//                 child: StreamBuilder<List<Map<String, dynamic>>>(
//                   stream: fetchHistoryItems(),
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return const Center(child: CircularProgressIndicator());
//                     }
//                     if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                       return Center(
//                         child: Text(
//                           'No history records found.',
//                           style: TextStyle(color: Colors.grey[600], fontSize: 16),
//                         ),
//                       );
//                     }

//                     final historyItems = snapshot.data!;
//                     return ListView.builder(
//                       itemCount: historyItems.length,
//                       itemBuilder: (context, index) {
//                         final item = historyItems[index];
//                         final timestamp = item['timestamp'] != null
//                             ? (item['timestamp'] as Timestamp).toDate()
//                             : null;
//                         final formattedDate = timestamp != null
//                             ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
//                             : 'Unknown Date';

//                         final String area = item["area"] ?? 'Unknown Area';
//                         final String thermalImage =
//                             item["imageUrl"] ?? 'assets/images/default.png';
//                         final String normalImage = item["normalImageUrl"] ??
//                             'https://via.placeholder.com/150';

//                         return Container(
//                           margin: const EdgeInsets.symmetric(vertical: 8),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black26,
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 3),
//                               ),
//                             ],
//                           ),
//                           child: ExpansionTile(
//                             title: Row(
//                               children: [
//                                 Icon(Icons.warning_amber_rounded,
//                                     color: Colors.orangeAccent),
//                                 const SizedBox(width: 10),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       area,
//                                       style: TextStyle(
//                                         color: Colors.black87,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
//                                       style: TextStyle(
//                                         color: Colors.grey[800],
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Date: $formattedDate',
//                                       style: TextStyle(
//                                         color: Colors.grey[600],
//                                         fontSize: 12,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             children: [
//                               GestureDetector(
//                                 onTap: () => _showImageDialog(thermalImage),
//                                 child: CachedNetworkImage(
//                                   imageUrl: thermalImage,
//                                   height: 100,
//                                   width: double.infinity,
//                                   fit: BoxFit.cover,
//                                   placeholder: (context, url) =>
//                                       const CircularProgressIndicator(),
//                                   errorWidget: (context, url, error) =>
//                                       Container(
//                                     height: 100,
//                                     width: double.infinity,
//                                     color: Colors.grey,
//                                     child: const Center(
//                                         child: Text("Thermal image not available")),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 10),
//                               GestureDetector(
//                                 onTap: () => _showImageDialog(normalImage),
//                                 child: CachedNetworkImage(
//                                   imageUrl: normalImage,
//                                   height: 100,
//                                   width: double.infinity,
//                                   fit: BoxFit.cover,
//                                   placeholder: (context, url) =>
//                                       const CircularProgressIndicator(),
//                                   errorWidget: (context, url, error) =>
//                                       Container(
//                                     height: 100,
//                                     width: double.infinity,
//                                     color: Colors.grey,
//                                     child: const Center(
//                                         child: Text("Normal image not available")),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String? _selectedFilter;

  Stream<List<Map<String, dynamic>>> fetchHistoryItems() {
    return FirebaseFirestore.instance
        .collection('History')
        .where('status', isEqualTo: 'Updated')
        .snapshots()
        .map((snapshot) {
      List<Map<String, dynamic>> items =
          snapshot.docs.map((doc) => doc.data()).toList();

      if (_selectedFilter != null && _selectedFilter != 'All') {
        items = items.where((item) {
          return item['predictionResult'] == _selectedFilter;
        }).toList();
      }

      return items;
    });
  }

  Future<String?> getUserName() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot userData =
          await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      if (userData.exists) {
        return userData['username'] ?? 'User';
      }
    }
    return 'User';
  }

  void _showImageDialog(String imageUrl) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: InteractiveViewer(
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.contain,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Center(
                child: Text("Image not available"),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder<String?>(
                future: getUserName(),
                builder: (context, snapshot) {
                  String userName = 'User';
                  if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                    userName = snapshot.data!;
                  }
                  return Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/11.png'),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, $userName',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            'View your incident history',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    ),
                    child: const Text(
                      'History',
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 22, 118, 227)),
                    ),
                  ),
                  DropdownButton<String>(
                    value: _selectedFilter,
                    hint: Text(
                      'Filter by Type',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 'All',
                        child: Text('All'),
                      ),
                      DropdownMenuItem(
                        value: 'Gas Leak',
                        child: Text('Gas Leak'),
                      ),
                      DropdownMenuItem(
                        value: 'Smoke',
                        child: Text('Smoke'),
                      ),
                      DropdownMenuItem(
                        value: 'Gas,Smoke Leak',
                        child: Text('Gas and Smoke Leak'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _selectedFilter = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: StreamBuilder<List<Map<String, dynamic>>>(
                  stream: fetchHistoryItems(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(
                        child: Text(
                          'No history records found.',
                          style: TextStyle(color: Colors.grey[600], fontSize: 16),
                        ),
                      );
                    }

                    final historyItems = snapshot.data!;
                    return ListView.builder(
                      itemCount: historyItems.length,
                      itemBuilder: (context, index) {
                        final item = historyItems[index];
                        final timestamp = item['timestamp'] != null
                            ? (item['timestamp'] as Timestamp).toDate()
                            : null;
                        final formattedDate = timestamp != null
                            ? DateFormat('yyyy-MM-dd HH:mm').format(timestamp)
                            : 'Unknown Date';

                        final String area = item["area"] ?? 'Unknown Area';
                        final String camera = item["camera"] ?? 'Unknown Camera'; // اسم الكاميرا
                        final String thermalImage =
                            item["imageUrl"] ?? 'assets/images/default.png';
                        final String normalImage = item["normalImageUrl"] ??
                            'https://via.placeholder.com/150';

                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                Icon(Icons.warning_amber_rounded,
                                    color: Colors.orangeAccent),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      area,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Camera: $camera',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'Gas Type: ${item['predictionResult'] ?? 'Unknown'}',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'Date: $formattedDate',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            children: [
                              GestureDetector(
                                onTap: () => _showImageDialog(thermalImage),
                                child: CachedNetworkImage(
                                  imageUrl: thermalImage,
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Container(
                                    height: 100,
                                    width: double.infinity,
                                    color: Colors.grey,
                                    child: const Center(
                                        child: Text("Thermal image not available")),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () => _showImageDialog(normalImage),
                                child: CachedNetworkImage(
                                  imageUrl: normalImage,
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Container(
                                    height: 100,
                                    width: double.infinity,
                                    color: Colors.grey,
                                    child: const Center(
                                        child: Text("Normal image not available")),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
