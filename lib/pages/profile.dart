// // // // import 'package:flutter/material.dart';

// // // // class Profile extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       body: SingleChildScrollView(
// // // //         child: Column(
// // // //           children: [
// // // //             // Industry Image at the top (no AppBar, starts from top of the screen)
// // // //             Container(
// // // //               width: double.infinity,
// // // //               child: Image.asset(
// // // //                 'assets/images/Header.png', // Replace with your asset image
// // // //                 fit: BoxFit.cover,
// // // //                 height: 200,
// // // //               ),
// // // //             ),

// // // //             SizedBox(height: 20),

// // // //             // Employee personal image
// // // //             CircleAvatar(
// // // //               radius: 50,
// // // //               backgroundImage: AssetImage('assets/images/employeeIMG.png'), // Replace with your asset image
// // // //             ),

// // // //             SizedBox(height: 10),

// // // //             // Employee information
// // // //             ListTile(
// // // //               leading: Icon(Icons.person),
// // // //               title: Text('Mohammed Almalki'),
// // // //             ),
// // // //             ListTile(
// // // //               leading: Icon(Icons.email),
// // // //               title: Text('employee@example.com'),
// // // //             ),
// // // //             ListTile(
// // // //               leading: Icon(Icons.phone),
// // // //               title: Text('+966 536 838 527'),
// // // //             ),

// // // //             // Change Password
// // // //             ListTile(
// // // //               leading: Icon(Icons.security),
// // // //               title: Text('Change Password'),
// // // //               onTap: () {
// // // //                 // Add your change password functionality here
// // // //               },
// // // //             ),

// // // //             // Number of Incidents
// // // //             ListTile(
// // // //               leading: Icon(Icons.warning),
// // // //               title: Text('Number of Incidents: 3'),
// // // //             ),

// // // //             // Log out button
// // // //             Padding(
// // // //               padding: const EdgeInsets.all(20.0),
// // // //               child: ElevatedButton.icon(
// // // //                 onPressed: () {
// // // //                   // Add your log out functionality here
// // // //                 },
// // // //                 icon: Icon(Icons.logout),
// // // //                 label: Text('Log Out'),
// // // //                 style: ElevatedButton.styleFrom(
// // // //                   backgroundColor: Colors.red, // Background color
// // // //                   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }


// // // // import 'dart:io';
// // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // import 'package:firebase_auth/firebase_auth.dart';
// // // // import 'package:firebase_storage/firebase_storage.dart';
// // // // import 'package:flutter/material.dart';

// // // // class Profile extends StatefulWidget {
// // // //   const Profile({super.key});

// // // //   @override
// // // //   _ProfileState createState() => _ProfileState();
// // // // }

// // // // class _ProfileState extends State<Profile> {
// // // //   final FirebaseAuth _auth = FirebaseAuth.instance;
// // // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// // // //   final FirebaseStorage _storage = FirebaseStorage.instance;

// // // //   String? _username;
// // // //   String? _email;
// // // //   String? _phoneNumber;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _getUserData();
// // // //   }

// // // //   Future<void> _getUserData() async {
// // // //     User? user = _auth.currentUser;

// // // //     if (user != null) {
// // // //       DocumentSnapshot userData =
// // // //           await _firestore.collection('users').doc(user.uid).get();

// // // //       if (userData.exists) {
// // // //         setState(() {
// // // //           _username = userData['username'] ?? 'No username';
// // // //           _email = userData['email'] ?? 'No email';
// // // //           _phoneNumber = userData['phone'] ?? 'No phone number';
// // // //         });
// // // //       }
// // // //     }
// // // //   }

// // // //   Future<void> _changePassword(String newPassword) async {
// // // //     User? user = _auth.currentUser;
// // // //     try {
// // // //       await user?.updatePassword(newPassword);
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //           SnackBar(content: Text('Password changed successfully')));
// // // //     } catch (error) {
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //           SnackBar(content: Text('Failed to change password: $error')));
// // // //     }
// // // //   }

// // // //   void _showChangePasswordDialog() {
// // // //     String newPassword = '';
// // // //     String confirmPassword = '';

// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) => AlertDialog(
// // // //         title: Text('Change Password'),
// // // //         content: Column(
// // // //           mainAxisSize: MainAxisSize.min,
// // // //           children: [
// // // //             TextField(
// // // //               onChanged: (value) {
// // // //                 newPassword = value;
// // // //               },
// // // //               obscureText: true,
// // // //               decoration: InputDecoration(
// // // //                 hintText: "Enter new password",
// // // //                 focusedBorder: OutlineInputBorder(
// // // //                   borderSide: BorderSide(color: Colors.blue),
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 10),
// // // //             TextField(
// // // //               onChanged: (value) {
// // // //                 confirmPassword = value;
// // // //               },
// // // //               obscureText: true,
// // // //               decoration: InputDecoration(
// // // //                 hintText: "Confirm new password",
// // // //                 focusedBorder: OutlineInputBorder(
// // // //                   borderSide: BorderSide(color: Colors.blue),
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //         actions: [
// // // //           TextButton(
// // // //             onPressed: () {
// // // //               Navigator.of(context).pop();
// // // //             },
// // // //             child: Text(
// // // //               'Cancel',
// // // //               style: TextStyle(color: Colors.black),
// // // //             ),
// // // //           ),
// // // //           TextButton(
// // // //             onPressed: () async {
// // // //               if (newPassword.isNotEmpty && newPassword == confirmPassword) {
// // // //                 await _changePassword(newPassword);
// // // //                 Navigator.of(context).pop();
// // // //               } else {
// // // //                 ScaffoldMessenger.of(context).showSnackBar(
// // // //                   SnackBar(content: Text('Passwords do not match')),
// // // //                 );
// // // //               }
// // // //             },
// // // //             child: Text(
// // // //               'Change',
// // // //               style: TextStyle(color: Colors.black),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Future<void> _signOut() async {
// // // //     await _auth.signOut();
// // // //     Navigator.of(context).pushReplacementNamed('/login');
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         automaticallyImplyLeading: false, // إيقاف السهم في أعلى الصفحة
// // // //         title: Align(
// // // //         alignment: Alignment.center, // لضمان أن الكلمة في الوسط
// // // //         child: Text(
// // // //           'Profile', // الكلمة التي تريدها
// // // //           style: TextStyle(
// // // //             fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black, letterSpacing: 1.2, // المسافة بين الحروف// تكبير النص قليلاً
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: Column(
// // // //           mainAxisAlignment: MainAxisAlignment.start,
// // // //           children: [
// // // //             Column(
// // // //               children: [
// // // //                 // صورة الملف الشخصي بدون إمكانية تعديل
// // // //                 CircleAvatar(
// // // //                   radius: 50,
// // // //                   backgroundImage: AssetImage('assets/images/employeeIMG.png'),
// // // //                   backgroundColor: Colors.transparent,
// // // //                 ),
// // // //                 SizedBox(height: 40), //spaces 
// // // //                 _buildCombinedInfoContainer(
// // // //                     _username ?? 'Username', _email ?? 'Email', _phoneNumber ?? 'No Phone Number'),
// // // //               ],
// // // //             ),
// // // //             SizedBox(height: 20), //spcaes
// // // //             _buildChangePasswordContainer(),
// // // //             Spacer(),
// // // //             Container(
// // // //               padding: EdgeInsets.all(16.0),
// // // //               width: double.infinity,
// // // //               child: GestureDetector(
// // // //                 onTap: _signOut,
// // // //                 child: Row(
// // // //                   mainAxisAlignment: MainAxisAlignment.center,
// // // //                   children: [
// // // //                     Icon(Icons.logout, color: Colors.red),
// // // //                     SizedBox(width: 8),
// // // //                     Text(
// // // //                       "Log Out",
// // // //                       style: TextStyle(color: Colors.red, fontSize: 16),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildCombinedInfoContainer(String username, String email, String phone) {
// // // //     return Container(
// // // //       width: double.infinity,
// // // //       padding: EdgeInsets.all(16.0),
// // // //       margin: EdgeInsets.only(bottom: 10.0),
// // // //       decoration: BoxDecoration(
// // // //         border: Border.all(color: Colors.brown),
// // // //         borderRadius: BorderRadius.circular(8.0),
// // // //       ),
// // // //       child: Column(
// // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // //         children: [
// // // //           Row(
// // // //             children: [
// // // //               Icon(Icons.person, size: 30),
// // // //               SizedBox(width: 10),
// // // //               Text(username, style: TextStyle(fontSize: 18)),
// // // //             ],
// // // //           ),
// // // //           SizedBox(height: 8),
// // // //           Row(
// // // //             children: [
// // // //               Icon(Icons.email, size: 30),
// // // //               SizedBox(width: 10),
// // // //               Text(email, style: TextStyle(fontSize: 18)),
// // // //             ],
// // // //           ),
// // // //           SizedBox(height: 8),
// // // //           Row(
// // // //             children: [
// // // //               Icon(Icons.phone, size: 30), // أيقونة الهاتف
// // // //               SizedBox(width: 10),
// // // //               Text(phone, style: TextStyle(fontSize: 18)), // عرض رقم الهاتف
// // // //             ],
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   // مستطيل تغيير كلمة المرور
// // // //   Widget _buildChangePasswordContainer() {
// // // //     return Container(
// // // //       width: double.infinity,
// // // //       padding: EdgeInsets.all(16.0),
// // // //       margin: EdgeInsets.only(bottom: 10.0),
// // // //       decoration: BoxDecoration(
// // // //         border: Border.all(color: Colors.brown),
// // // //         borderRadius: BorderRadius.circular(8.0),
// // // //       ),
// // // //       child: GestureDetector(
// // // //         onTap: _showChangePasswordDialog,
// // // //         child: Row(
// // // //           children: [
// // // //             Icon(Icons.lock, size: 30),
// // // //             SizedBox(width: 10),
// // // //             Text(
// // // //               'Change Password',
// // // //               style: TextStyle(fontSize: 18, color: Colors.black),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildInfoContainer(IconData icon, String text,
// // // //       {bool isLogout = false}) {
// // // //     return GestureDetector(
// // // //       onTap: isLogout ? _signOut : null,
// // // //       child: MouseRegion(
// // // //         cursor: isLogout ? SystemMouseCursors.click : SystemMouseCursors.basic,
// // // //         child: Container(
// // // //           width: double.infinity,
// // // //           padding: EdgeInsets.all(16.0),
// // // //           margin: EdgeInsets.only(bottom: 10.0),
// // // //           decoration: BoxDecoration(
// // // //             border: Border.all(color: Colors.brown),
// // // //             borderRadius: BorderRadius.circular(8.0),
// // // //           ),
// // // //           child: Row(
// // // //             children: [
// // // //               Icon(icon, size: 30),
// // // //               SizedBox(width: 10),
// // // //               Expanded(
// // // //                 child: Text(
// // // //                   text,
// // // //                   style: TextStyle(fontSize: 18, color: Colors.black),
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }



// // // import 'dart:io';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:firebase_auth/firebase_auth.dart';
// // // import 'package:firebase_storage/firebase_storage.dart';
// // // import 'package:flutter/material.dart';

// // // class Profile extends StatefulWidget {
// // //   const Profile({super.key});

// // //   @override
// // //   _ProfileState createState() => _ProfileState();
// // // }

// // // class _ProfileState extends State<Profile> {
// // //   final FirebaseAuth _auth = FirebaseAuth.instance;
// // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// // //   final FirebaseStorage _storage = FirebaseStorage.instance;

// // //   String? _username;
// // //   String? _email;
// // //   String? _phoneNumber;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _getUserData();
// // //   }

// // //   Future<void> _getUserData() async {
// // //     User? user = _auth.currentUser;

// // //     if (user != null) {
// // //       DocumentSnapshot userData =
// // //           await _firestore.collection('users').doc(user.uid).get();

// // //       if (userData.exists) {
// // //         setState(() {
// // //           _username = userData['username'] ?? 'No username';
// // //           _email = userData['email'] ?? 'No email';
// // //           _phoneNumber = userData['phone'] ?? 'No phone number';
// // //         });
// // //       }
// // //     }
// // //   }

// // //   Future<void> _changePassword(String newPassword) async {
// // //     User? user = _auth.currentUser;
// // //     try {
// // //       await user?.updatePassword(newPassword);
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //           SnackBar(content: Text('Password changed successfully')));
// // //     } catch (error) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //           SnackBar(content: Text('Failed to change password: $error')));
// // //     }
// // //   }

// // //   void _showChangePasswordDialog() {
// // //     String newPassword = '';
// // //     String confirmPassword = '';

// // //     showDialog(
// // //       context: context,
// // //       builder: (context) => AlertDialog(
// // //         title: const Text('Change Password'),
// // //         content: Column(
// // //           mainAxisSize: MainAxisSize.min,
// // //           children: [
// // //             TextField(
// // //               onChanged: (value) {
// // //                 newPassword = value;
// // //               },
// // //               obscureText: true,
// // //               decoration: const InputDecoration(
// // //                 hintText: "Enter new password",
// // //                 focusedBorder: OutlineInputBorder(
// // //                   borderSide: BorderSide(color: Colors.blue),
// // //                 ),
// // //               ),
// // //             ),
// // //             const SizedBox(height: 10),
// // //             TextField(
// // //               onChanged: (value) {
// // //                 confirmPassword = value;
// // //               },
// // //               obscureText: true,
// // //               decoration: const InputDecoration(
// // //                 hintText: "Confirm new password",
// // //                 focusedBorder: OutlineInputBorder(
// // //                   borderSide: BorderSide(color: Colors.blue),
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //         actions: [
// // //           TextButton(
// // //             onPressed: () {
// // //               Navigator.of(context).pop();
// // //             },
// // //             child: const Text(
// // //               'Cancel',
// // //               style: TextStyle(color: Colors.black),
// // //             ),
// // //           ),
// // //           TextButton(
// // //             onPressed: () async {
// // //               if (newPassword.isNotEmpty && newPassword == confirmPassword) {
// // //                 await _changePassword(newPassword);
// // //                 Navigator.of(context).pop();
// // //               } else {
// // //                 ScaffoldMessenger.of(context).showSnackBar(
// // //                   const SnackBar(content: Text('Passwords do not match')),
// // //                 );
// // //               }
// // //             },
// // //             child: const Text(
// // //               'Change',
// // //               style: TextStyle(color: Colors.black),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Future<void> _signOut() async {
// // //     await _auth.signOut();
// // //     Navigator.of(context).pushReplacementNamed('/login');
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         automaticallyImplyLeading: false,
// // //         title: const Align(
// // //           alignment: Alignment.center,
// // //           child: Text(
// // //             'Profile',
// // //             style: TextStyle(
// // //               fontSize: 24,
// // //               fontWeight: FontWeight.bold,
// // //               color: Colors.black,
// // //               letterSpacing: 1.2,
// // //             ),
// // //           ),
// // //         ),
// // //         backgroundColor: Colors.white,
// // //         elevation: 0,
// // //       ),
// // //       body: SingleChildScrollView(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           children: [
// // //             const SizedBox(height: 20),
// // //             CircleAvatar(
// // //               radius: 50,
// // //               backgroundImage: AssetImage('assets/images/employeeIMG.png'),
// // //               backgroundColor: Colors.transparent,
// // //             ),
// // //             const SizedBox(height: 20),
// // //             _buildProfileInfoCard(),
// // //             const SizedBox(height: 20),
// // //             _buildChangePasswordContainer(),
// // //             const SizedBox(height: 20),
// // //             _buildLogoutButton(),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProfileInfoCard() {
// // //     return Card(
// // //       elevation: 3,
// // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //       child: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             _buildInfoRow(Icons.person, _username ?? 'Username'),
// // //             const Divider(),
// // //             _buildInfoRow(Icons.email, _email ?? 'Email'),
// // //             const Divider(),
// // //             _buildInfoRow(Icons.phone, _phoneNumber ?? 'No Phone Number'),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildInfoRow(IconData icon, String text) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(vertical: 8.0),
// // //       child: Row(
// // //         children: [
// // //           Icon(icon, size: 30, color: Colors.blueAccent),
// // //           const SizedBox(width: 12),
// // //           Expanded(
// // //             child: Text(
// // //               text,
// // //               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildChangePasswordContainer() {
// // //     return GestureDetector(
// // //       onTap: _showChangePasswordDialog,
// // //       child: Card(
// // //         elevation: 3,
// // //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Row(
// // //             children: const [
// // //               Icon(Icons.lock, size: 30, color: Colors.blueAccent),
// // //               SizedBox(width: 12),
// // //               Text(
// // //                 'Change Password',
// // //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildLogoutButton() {
// // //     return GestureDetector(
// // //       onTap: _signOut,
// // //       child: Card(
// // //         elevation: 3,
// // //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Row(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: const [
// // //               Icon(Icons.logout, color: Colors.red),
// // //               SizedBox(width: 8),
// // //               Text(
// // //                 "Log Out",
// // //                 style: TextStyle(color: Colors.red, fontSize: 16),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }


// // // import 'dart:io';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:firebase_auth/firebase_auth.dart';
// // // import 'package:firebase_storage/firebase_storage.dart';
// // // import 'package:flutter/material.dart';

// // // class Profile extends StatefulWidget {
// // //   const Profile({super.key});

// // //   @override
// // //   _ProfileState createState() => _ProfileState();
// // // }

// // // class _ProfileState extends State<Profile> {
// // //   final FirebaseAuth _auth = FirebaseAuth.instance;
// // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// // //   final FirebaseStorage _storage = FirebaseStorage.instance;

// // //   String? _username;
// // //   String? _email;
// // //   String? _phoneNumber;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _getUserData();
// // //   }

// // //   Future<void> _getUserData() async {
// // //     User? user = _auth.currentUser;

// // //     if (user != null) {
// // //       DocumentSnapshot userData =
// // //           await _firestore.collection('users').doc(user.uid).get();

// // //       if (userData.exists) {
// // //         setState(() {
// // //           _username = userData['username'] ?? 'No username';
// // //           _email = userData['email'] ?? 'No email';
// // //           _phoneNumber = userData['phone'] ?? 'No phone number';
// // //         });
// // //       }
// // //     }
// // //   }

// // //   Future<void> _changePassword(String newPassword) async {
// // //     User? user = _auth.currentUser;
// // //     try {
// // //       await user?.updatePassword(newPassword);
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //           SnackBar(content: Text('Password changed successfully')));
// // //     } catch (error) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //           SnackBar(content: Text('Failed to change password: $error')));
// // //     }
// // //   }

// // //   void _showChangePasswordDialog() {
// // //     String newPassword = '';
// // //     String confirmPassword = '';

// // //     showDialog(
// // //       context: context,
// // //       builder: (context) => AlertDialog(
// // //         title: const Text('Change Password'),
// // //         content: Column(
// // //           mainAxisSize: MainAxisSize.min,
// // //           children: [
// // //             TextField(
// // //               onChanged: (value) {
// // //                 newPassword = value;
// // //               },
// // //               obscureText: true,
// // //               decoration: const InputDecoration(
// // //                 hintText: "Enter new password",
// // //                 focusedBorder: OutlineInputBorder(
// // //                   borderSide: BorderSide(color: Colors.blue),
// // //                 ),
// // //               ),
// // //             ),
// // //             const SizedBox(height: 10),
// // //             TextField(
// // //               onChanged: (value) {
// // //                 confirmPassword = value;
// // //               },
// // //               obscureText: true,
// // //               decoration: const InputDecoration(
// // //                 hintText: "Confirm new password",
// // //                 focusedBorder: OutlineInputBorder(
// // //                   borderSide: BorderSide(color: Colors.blue),
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //         actions: [
// // //           TextButton(
// // //             onPressed: () {
// // //               Navigator.of(context).pop();
// // //             },
// // //             child: const Text(
// // //               'Cancel',
// // //               style: TextStyle(color: Colors.black),
// // //             ),
// // //           ),
// // //           TextButton(
// // //             onPressed: () async {
// // //               if (newPassword.isNotEmpty && newPassword == confirmPassword) {
// // //                 await _changePassword(newPassword);
// // //                 Navigator.of(context).pop();
// // //               } else {
// // //                 ScaffoldMessenger.of(context).showSnackBar(
// // //                   const SnackBar(content: Text('Passwords do not match')),
// // //                 );
// // //               }
// // //             },
// // //             child: const Text(
// // //               'Change',
// // //               style: TextStyle(color: Colors.black),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Future<void> _signOut() async {
// // //     await _auth.signOut();
// // //     Navigator.of(context).pushReplacementNamed('/login');
// // //   }

// // //   Future<void> _updateUsername(String newUsername) async {
// // //     User? user = _auth.currentUser;
// // //     if (user != null) {
// // //       await _firestore.collection('users').doc(user.uid).update({
// // //         'username': newUsername,
// // //       });
// // //       setState(() {
// // //         _username = newUsername;
// // //       });
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(content: Text('Username updated successfully')),
// // //       );
// // //     }
// // //   }

// // //   void _showChangeUsernameDialog() {
// // //     String newUsername = '';

// // //     showDialog(
// // //       context: context,
// // //       builder: (context) => AlertDialog(
// // //         title: const Text('Change Username'),
// // //         content: TextField(
// // //           onChanged: (value) {
// // //             newUsername = value;
// // //           },
// // //           decoration: const InputDecoration(
// // //             hintText: "Enter new username",
// // //             focusedBorder: OutlineInputBorder(
// // //               borderSide: BorderSide(color: Colors.blue),
// // //             ),
// // //           ),
// // //         ),
// // //         actions: [
// // //           TextButton(
// // //             onPressed: () {
// // //               Navigator.of(context).pop();
// // //             },
// // //             child: const Text(
// // //               'Cancel',
// // //               style: TextStyle(color: Colors.black),
// // //             ),
// // //           ),
// // //           TextButton(
// // //             onPressed: () async {
// // //               if (newUsername.isNotEmpty) {
// // //                 await _updateUsername(newUsername);
// // //                 Navigator.of(context).pop();
// // //               }
// // //             },
// // //             child: const Text(
// // //               'Update',
// // //               style: TextStyle(color: Colors.black),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         automaticallyImplyLeading: false,
// // //         title: const Align(
// // //           alignment: Alignment.center,
// // //           child: Text(
// // //             'Profile',
// // //             style: TextStyle(
// // //               fontSize: 24,
// // //               fontWeight: FontWeight.bold,
// // //               color: Colors.black,
// // //               letterSpacing: 1.2,
// // //             ),
// // //           ),
// // //         ),
// // //         backgroundColor: Colors.white,
// // //         elevation: 0,
// // //       ),
// // //       body: SingleChildScrollView(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           children: [
// // //             const SizedBox(height: 20),
// // //             CircleAvatar(
// // //               radius: 50,
// // //               backgroundImage: AssetImage('assets/images/employeeIMG.png'),
// // //               backgroundColor: Colors.transparent,
// // //             ),
// // //             const SizedBox(height: 20),
// // //             _buildProfileInfoCard(),
// // //             const SizedBox(height: 20),
// // //             _buildChangePasswordContainer(),
// // //             const SizedBox(height: 20),
// // //             _buildLogoutButton(),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildProfileInfoCard() {
// // //     return Card(
// // //       elevation: 3,
// // //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //       child: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             GestureDetector(
// // //               onTap: _showChangeUsernameDialog,
// // //               child: _buildInfoRow(Icons.person, _username ?? 'Username'),
// // //             ),
// // //             const Divider(),
// // //             _buildInfoRow(Icons.email, _email ?? 'Email'),
// // //             const Divider(),
// // //             _buildInfoRow(Icons.phone, _phoneNumber ?? 'No Phone Number'),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildInfoRow(IconData icon, String text) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(vertical: 8.0),
// // //       child: Row(
// // //         children: [
// // //           Icon(icon, size: 30, color: Colors.blueAccent),
// // //           const SizedBox(width: 12),
// // //           Expanded(
// // //             child: Text(
// // //               text,
// // //               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildChangePasswordContainer() {
// // //     return GestureDetector(
// // //       onTap: _showChangePasswordDialog,
// // //       child: Card(
// // //         elevation: 3,
// // //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Row(
// // //             children: const [
// // //               Icon(Icons.lock, size: 30, color: Colors.blueAccent),
// // //               SizedBox(width: 12),
// // //               Text(
// // //                 'Change Password',
// // //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildLogoutButton() {
// // //     return GestureDetector(
// // //       onTap: _signOut,
// // //       child: Card(
// // //         elevation: 3,
// // //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Row(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: const [
// // //               Icon(Icons.logout, color: Colors.red),
// // //               SizedBox(width: 8),
// // //               Text(
// // //                 "Log Out",
// // //                 style: TextStyle(color: Colors.red, fontSize: 16),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'dart:io';   
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:flutter/material.dart';

// // class Profile extends StatefulWidget {
// //   const Profile({super.key});

// //   @override
// //   _ProfileState createState() => _ProfileState();
// // }

// // class _ProfileState extends State<Profile> {
// //   final FirebaseAuth _auth = FirebaseAuth.instance;
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// //   final FirebaseStorage _storage = FirebaseStorage.instance;

// //   String? _username;
// //   String? _email;
// //   String? _phoneNumber;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _getUserData();
// //   }

// //   Future<void> _getUserData() async {
// //     User? user = _auth.currentUser;

// //     if (user != null) {
// //       DocumentSnapshot userData =
// //           await _firestore.collection('users').doc(user.uid).get();

// //       if (userData.exists) {
// //         setState(() {
// //           _username = userData['username'] ?? 'No username';
// //           _email = userData['email'] ?? 'No email';
// //           _phoneNumber = userData['phone'] ?? 'No phone number';
// //         });
// //       }
// //     }
// //   }

// //   Future<void> _changePassword(String newPassword) async {
// //     User? user = _auth.currentUser;
// //     try {
// //       await user?.updatePassword(newPassword);
// //       _showSnackBar('Password changed successfully!', Colors.green); // عرض رسالة النجاح
// //     } catch (error) {
// //       _showSnackBar('Failed to change password: $error', Colors.red); // عرض رسالة الفشل
// //     }
// //   }

// //   void _showSnackBar(String message, Color color) {
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(
// //         content: Text(
// //           message,
// //           style: TextStyle(color: Colors.white), // النص باللون الأبيض
// //         ),
// //         backgroundColor: color,
// //       ),
// //     );
// //   }

// //   void _showChangePasswordDialog() {
// //     String newPassword = '';
// //     String confirmPassword = '';

// //     showDialog(
// //       context: context,
// //       builder: (context) => AlertDialog(
// //         title: const Text('Change Password'),
// //         content: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             TextField(
// //               onChanged: (value) {
// //                 newPassword = value;
// //               },
// //               obscureText: true,
// //               decoration: const InputDecoration(
// //                 hintText: "Enter new password",
// //                 focusedBorder: OutlineInputBorder(
// //                   borderSide: BorderSide(color: Colors.blue),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             TextField(
// //               onChanged: (value) {
// //                 confirmPassword = value;
// //               },
// //               obscureText: true,
// //               decoration: const InputDecoration(
// //                 hintText: "Confirm new password",
// //                 focusedBorder: OutlineInputBorder(
// //                   borderSide: BorderSide(color: Colors.blue),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //         actions: [
// //           TextButton(
// //             onPressed: () {
// //               Navigator.of(context).pop();
// //             },
// //             child: const Text(
// //               'Cancel',
// //               style: TextStyle(color: Colors.black),
// //             ),
// //           ),
// //           TextButton(
// //             onPressed: () async {
// //               if (newPassword.isNotEmpty && newPassword == confirmPassword) {
// //                 await _changePassword(newPassword);
// //                 Navigator.of(context).pop();
// //               } else {
// //                 _showSnackBar('Passwords do not match', Colors.red); // رسالة عدم التطابق
// //               }
// //             },
// //             child: const Text(
// //               'Change',
// //               style: TextStyle(color: Colors.black),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Future<void> _updateUsername(String newUsername) async {
// //     User? user = _auth.currentUser;
// //     if (user != null) {
// //       try {
// //         await _firestore.collection('users').doc(user.uid).update({
// //           'username': newUsername,
// //         });
// //         setState(() {
// //           _username = newUsername;
// //         });
// //         _showSnackBar('Username updated successfully!', Colors.green); // عرض رسالة النجاح
// //       } catch (error) {
// //         _showSnackBar('Failed to update username: $error', Colors.red); // عرض رسالة الفشل
// //       }
// //     }
// //   }

// //   void _showChangeUsernameDialog() {
// //     String newUsername = '';

// //     showDialog(
// //       context: context,
// //       builder: (context) => AlertDialog(
// //         title: const Text('Change Username'),
// //         content: TextField(
// //           onChanged: (value) {
// //             newUsername = value;
// //           },
// //           decoration: const InputDecoration(
// //             hintText: "Enter new username",
// //             focusedBorder: OutlineInputBorder(
// //               borderSide: BorderSide(color: Colors.blue),
// //             ),
// //           ),
// //         ),
// //         actions: [
// //           TextButton(
// //             onPressed: () {
// //               Navigator.of(context).pop();
// //             },
// //             child: const Text(
// //               'Cancel',
// //               style: TextStyle(color: Colors.black),
// //             ),
// //           ),
// //           TextButton(
// //             onPressed: () async {
// //               if (newUsername.isNotEmpty) {
// //                 await _updateUsername(newUsername);
// //                 Navigator.of(context).pop();
// //               }
// //             },
// //             child: const Text(
// //               'Update',
// //               style: TextStyle(color: Colors.black),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         automaticallyImplyLeading: false,
// //         title: const Align(
// //           alignment: Alignment.center,
// //           child: Text(
// //             'Profile',
// //             style: TextStyle(
// //               fontSize: 24,
// //               fontWeight: FontWeight.bold,
// //               color: Colors.black,
// //               letterSpacing: 1.2,
// //             ),
// //           ),
// //         ),
// //         backgroundColor: Colors.white,
// //         elevation: 0,
// //       ),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             const SizedBox(height: 20),
// //             CircleAvatar(
// //               radius: 50,
// //               backgroundImage: AssetImage('assets/images/employeeIMG.png'),
// //               backgroundColor: Colors.transparent,
// //             ),
// //             const SizedBox(height: 20),
// //             _buildProfileInfoCard(),
// //             const SizedBox(height: 20),
// //             _buildChangePasswordContainer(),
// //             const SizedBox(height: 20),
// //             _buildLogoutButton(),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildProfileInfoCard() {
// //     return Card(
// //       elevation: 3,
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             GestureDetector(
// //               onTap: _showChangeUsernameDialog,
// //               child: _buildInfoRow(Icons.person, _username ?? 'Username'),
// //             ),
// //             const Divider(),
// //             _buildInfoRow(Icons.email, _email ?? 'Email'),
// //             const Divider(),
// //             _buildInfoRow(Icons.phone, _phoneNumber ?? 'No Phone Number'),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildInfoRow(IconData icon, String text) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 8.0),
// //       child: Row(
// //         children: [
// //           Icon(icon, size: 30, color: Colors.blueAccent),
// //           const SizedBox(width: 12),
// //           Expanded(
// //             child: Text(
// //               text,
// //               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildChangePasswordContainer() {
// //     return GestureDetector(
// //       onTap: _showChangePasswordDialog,
// //       child: Card(
// //         elevation: 3,
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Row(
// //             children: const [
// //               Icon(Icons.lock, size: 30, color: Colors.blueAccent),
// //               SizedBox(width: 12),
// //               Text(
// //                 'Change Password',
// //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildLogoutButton() {
// //     return GestureDetector(
// //       onTap: _signOut,
// //       child: Card(
// //         elevation: 3,
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: const [
// //               Icon(Icons.logout, color: Colors.red),
// //               SizedBox(width: 8),
// //               Text(
// //                 "Log Out",
// //                 style: TextStyle(color: Colors.red, fontSize: 16),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //   Future<void> _signOut() async {
// //   await _auth.signOut();
// //   Navigator.of(context).pushReplacementNamed('/login'); // يمكنك تعديل المسار حسب تطبيقك
// // }

// // }


// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseStorage _storage = FirebaseStorage.instance;

//   String? _username;
//   String? _email;
//   String? _phoneNumber;

//   @override
//   void initState() {
//     super.initState();
//     _getUserData();
//   }

//   Future<void> _getUserData() async {
//     User? user = _auth.currentUser;

//     if (user != null) {
//       DocumentSnapshot userData =
//           await _firestore.collection('users').doc(user.uid).get();

//       if (userData.exists) {
//         setState(() {
//           _username = userData['username'] ?? 'No username';
//           _email = userData['email'] ?? 'No email';
//           _phoneNumber = userData['phone'] ?? 'No phone number';
//         });
//       }
//     }
//   }

//   Future<void> _changePassword(String newPassword) async {
//     User? user = _auth.currentUser;
//     try {
//       await user?.updatePassword(newPassword);
//       _showSnackBar('Password changed successfully!', Colors.green);
//     } catch (error) {
//       _showSnackBar('Failed to change password: $error', Colors.red);
//     }
//   }

//   void _showSnackBar(String message, Color color) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(
//           message,
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: color,
//       ),
//     );
//   }

//   void _showChangePasswordDialog() {
//     String newPassword = '';
//     String confirmPassword = '';

//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Change Password'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             TextField(
//               onChanged: (value) {
//                 newPassword = value;
//               },
//               obscureText: true,
//               decoration: const InputDecoration(
//                 hintText: "Enter new password",
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               onChanged: (value) {
//                 confirmPassword = value;
//               },
//               obscureText: true,
//               decoration: const InputDecoration(
//                 hintText: "Confirm new password",
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text(
//               'Cancel',
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//           TextButton(
//             onPressed: () async {
//               if (newPassword.isNotEmpty && newPassword == confirmPassword) {
//                 await _changePassword(newPassword);
//                 Navigator.of(context).pop();
//               } else {
//                 _showSnackBar('Passwords do not match', Colors.red);
//               }
//             },
//             child: const Text(
//               'Change',
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _updateUsername(String newUsername) async {
//     User? user = _auth.currentUser;
//     if (user != null) {
//       try {
//         await _firestore.collection('users').doc(user.uid).update({
//           'username': newUsername,
//         });
//         setState(() {
//           _username = newUsername;
//         });
//         _showSnackBar('Username updated successfully!', Colors.green);
//       } catch (error) {
//         _showSnackBar('Failed to update username: $error', Colors.red);
//       }
//     }
//   }

//   void _showChangeUsernameDialog() {
//     String newUsername = '';

//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Change Username'),
//         content: TextField(
//           onChanged: (value) {
//             newUsername = value;
//           },
//           decoration: const InputDecoration(
//             hintText: "Enter new username",
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.blue),
//             ),
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text(
//               'Cancel',
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//           TextButton(
//             onPressed: () async {
//               if (newUsername.isNotEmpty) {
//                 await _updateUsername(newUsername);
//                 Navigator.of(context).pop();
//               }
//             },
//             child: const Text(
//               'Update',
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildContactUsContainer() {
//     return GestureDetector(
//       onTap: _showContactOptions,
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: const [
//               Icon(Icons.contact_phone, size: 30, color: Colors.blueAccent),
//               SizedBox(width: 12),
//               Text(
//                 'Contact Us',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showContactOptions() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Contact Us'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.phone, color: Colors.green),
//               title: const Text('Call us: 0567886059'),
//               onTap: () async {
//                 final Uri phoneUri = Uri(scheme: 'tel', path: '0567886059');
//                 if (await canLaunchUrl(phoneUri)) {
//                   await launchUrl(phoneUri);
//                 } else {
//                   _showSnackBar('Could not launch phone call', Colors.red);
//                 }
//               },
//             ),
//             const Divider(),
//             ListTile(
//               leading: const Icon(Icons.link, color: Colors.blue),
//               title: const Text('Twitter: @saraalshaikh__'),
//               onTap: () async {
//                 final Uri twitterUri =
//                     Uri.parse('https://twitter.com/saraalshaikh__');
//                 if (await canLaunchUrl(twitterUri)) {
//                   await launchUrl(twitterUri);
//                 } else {
//                   _showSnackBar('Could not open Twitter', Colors.red);
//                 }
//               },
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Close'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Align(
//           alignment: Alignment.center,
//           child: Text(
//             'Profile',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               letterSpacing: 1.2,
//             ),
//           ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage('assets/images/employeeIMG.png'),
//               backgroundColor: Colors.transparent,
//             ),
//             const SizedBox(height: 20),
//             _buildProfileInfoCard(),
//             const SizedBox(height: 20),
//             _buildChangePasswordContainer(),
//             const SizedBox(height: 20),
//             _buildContactUsContainer(),
//             const SizedBox(height: 20),
//             _buildLogoutButton(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildProfileInfoCard() {
//     return Card(
//       elevation: 3,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GestureDetector(
//               onTap: _showChangeUsernameDialog,
//               child: _buildInfoRow(Icons.person, _username ?? 'Username'),
//             ),
//             const Divider(),
//             _buildInfoRow(Icons.email, _email ?? 'Email'),
//             const Divider(),
//             _buildInfoRow(Icons.phone, _phoneNumber ?? 'No Phone Number'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoRow(IconData icon, String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Icon(icon, size: 30, color: Colors.blueAccent),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Text(
//               text,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildChangePasswordContainer() {
//     return GestureDetector(
//       onTap: _showChangePasswordDialog,
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: const [
//               Icon(Icons.lock, size: 30, color: Colors.blueAccent),
//               SizedBox(width: 12),
//               Text(
//                 'Change Password',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildLogoutButton() {
//     return GestureDetector(
//       onTap: _signOut,
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Icon(Icons.logout, color: Colors.red),
//               SizedBox(width: 8),
//               Text(
//                 "Log Out",
//                 style: TextStyle(color: Colors.red, fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _signOut() async {
//     await _auth.signOut();
//     Navigator.of(context).pushReplacementNamed('/login');
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ContactUsPage.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String? _username;
  String? _email;
  String? _phoneNumber;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  Future<void> _getUserData() async {
    User? user = _auth.currentUser;

    if (user != null) {
      DocumentSnapshot userData =
          await _firestore.collection('users').doc(user.uid).get();

      if (userData.exists) {
        setState(() {
          _username = userData['username'] ?? 'No username';
          _email = userData['email'] ?? 'No email';
          _phoneNumber = userData['phone'] ?? 'No phone number';
        });
      }
    }
  }

  Future<void> _changePassword(String newPassword) async {
    User? user = _auth.currentUser;
    try {
      await user?.updatePassword(newPassword);
      _showSnackBar('Password updated successfully!', Colors.green);
    } catch (error) {
      _showSnackBar('Failed to update password: $error', Colors.red);
    }
  }

  Future<void> _updateUsername(String newUsername) async {
    User? user = _auth.currentUser;
    if (user != null) {
      try {
        await _firestore.collection('users').doc(user.uid).update({
          'username': newUsername,
        });
        setState(() {
          _username = newUsername;
        });
        _showSnackBar('Username updated successfully!', Colors.green);
      } catch (error) {
        _showSnackBar('Failed to update username: $error', Colors.red);
      }
    }
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: color,
      ),
    );
  }

  void _showChangePasswordDialog() {
    String newPassword = '';
    String confirmPassword = '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Change Password'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) {
                newPassword = value;
              },
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter new password",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                confirmPassword = value;
              },
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Confirm new password",
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              if (newPassword.isNotEmpty && newPassword == confirmPassword) {
                await _changePassword(newPassword);
                Navigator.of(context).pop();
              } else {
                _showSnackBar('Passwords do not match', Colors.red);
              }
            },
            child: const Text('Change'),
          ),
        ],
      ),
    );
  }

  void _showChangeUsernameDialog() {
    String newUsername = '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Change Username'),
        content: TextField(
          onChanged: (value) {
            newUsername = value;
          },
          decoration: const InputDecoration(
            hintText: "Enter new username",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              if (newUsername.isNotEmpty) {
                await _updateUsername(newUsername);
                Navigator.of(context).pop();
              } else {
                _showSnackBar('Username cannot be empty', Colors.red);
              }
            },
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }

  void _showContactOptions() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Contact Us'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.green),
              title: const Text('Call us: 0567886059'),
              onTap: () async {
                final Uri phoneUri = Uri(scheme: 'tel', path: '0567886059');
                if (await canLaunchUrl(phoneUri)) {
                  await launchUrl(phoneUri);
                } else {
                  _showSnackBar('Could not launch phone call', Colors.red);
                }
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.link, color: Colors.blue),
              title: const Text('Twitter: @saraalshaikh__'),
              onTap: () async {
                final Uri twitterUri =
                    Uri.parse('https://x.com/SaraAlshaikh__');
                if (await canLaunchUrl(twitterUri)) {
                  await launchUrl(twitterUri);
                } else {
                  _showSnackBar('Could not open Twitter', Colors.red);
                }
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الجزء العلوي الأزرق
          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          // المحتوى
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 120),
                // صورة المستخدم
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/11.png'),
                ),
                const SizedBox(height: 20),
                // اسم المستخدم
                GestureDetector(
                  onTap: _showChangeUsernameDialog,
                  child: Text(
                    _username ?? 'Your Name',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                // البريد الإلكتروني
               
                const SizedBox(height: 30),
                // بطاقات الوظائف
                _buildProfileInfoCard(),
                const SizedBox(height: 20),
                _buildChangePasswordContainer(),
                const SizedBox(height: 20),
                _buildContactUsContainer(),
                const SizedBox(height: 20),
                _buildLogoutButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileInfoCard() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: _showChangeUsernameDialog,
              child: _buildInfoRow(Icons.person, _username ?? 'Username'),
            ),
            const Divider(),
            _buildInfoRow(Icons.email, _email ?? 'Email'),
            const Divider(),
            _buildInfoRow(Icons.phone, _phoneNumber ?? 'No Phone Number'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChangePasswordContainer() {
    return GestureDetector(
      onTap: _showChangePasswordDialog,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: const [
              Icon(Icons.lock, size: 30, color: Colors.blueAccent),
              SizedBox(width: 12),
              Text(
                'Change Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget _buildContactUsContainer() {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ContactUsPage(), // استبدل بـ ContactUsPage المناسبة
        ),
      );
    },
    child: Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: const [
            Icon(Icons.contact_phone, size: 30, color: Colors.blueAccent),
            SizedBox(width: 12),
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ),
  );
}


 Widget _buildLogoutButton() {
  return GestureDetector(
    onTap: _signOut,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.blue, Colors.lightBlueAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.4),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.logout, color: Colors.white),
          SizedBox(width: 8),
          Text(
            "Log Out",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

  Future<void> _signOut() async {
    try {
      await _auth.signOut();
      Navigator.of(context).pushReplacementNamed('/login'); // عدل هذا المسار إذا لزم الأمر
    } catch (error) {
      _showSnackBar('Failed to sign out: $error', Colors.red);
    }
  }
}
