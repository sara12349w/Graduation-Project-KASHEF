// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_kashef/pages/login.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // // import 'main.dart'; // Import the LoginPage file

// // class SignUp extends StatefulWidget {
// //   const SignUp({super.key});

// //   @override
// //   _SignUpPageState createState() => _SignUpPageState();
// // }

// // class _SignUpPageState extends State<SignUp> {
// //   bool _isPasswordVisible = false;
// //   final TextEditingController _phoneController =
// //       TextEditingController(text: '+966 ');
// //   final _emailController = TextEditingController();
// //   final _passwordController = TextEditingController();
// //   final _confirmPasswordController = TextEditingController();
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance; // تعديل هنا

// //   // Method to handle sign up
// //   Future<void> signUp() async {
// //     if (passwordConfirmed()) {
// //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
// //         email: _emailController.text.trim(),
// //         password: _passwordController.text.trim(),
// //       );
// //       Navigator.of(context).pushReplacementNamed('/');
// //     }
// //   }

// //   bool passwordConfirmed() {
// //     if (_passwordController.text.trim() ==
// //         _confirmPasswordController.text.trim()) {
// //       return true;
// //     } else {
// //       return false;
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _emailController.dispose();
// //     _passwordController.dispose();
// //     _confirmPasswordController.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // Sign-Up message
// //               const Text(
// //                 'Create a New Account',
// //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 40),

// //               // Name Text Field
// //               const TextField(
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your name',
// //                   labelText: 'Name',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),

// //               // Email Text Field
// //               TextField(
// //                 controller: _emailController,
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your email',
// //                   labelText: 'Email',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Phone Number Text Field (starting with +966)
// //               TextField(
// //                 controller: _phoneController,
// //                 keyboardType: TextInputType.phone,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Phone Number',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               // const SizedBox(height: 20),

// //               // // Password Text Field with Toggle Visibility
// //               // // Email Text Field
// //               // TextField(
// //               //   controller: _emailController,
// //               //   decoration: const InputDecoration(
// //               //     hintText: 'Enter your email',
// //               //     labelText: 'Email',
// //               //     border: OutlineInputBorder(),
// //               //   ),
// //               // ),
// //               const SizedBox(height: 20),

// //               // Password Text Field with visibility toggle
// //               TextField(
// //                 controller: _passwordController,
// //                 obscureText: !_isPasswordVisible,
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your password',
// //                   labelText: 'Password',
// //                   border: const OutlineInputBorder(),
// //                   suffixIcon: IconButton(
// //                     icon: Icon(
// //                       _isPasswordVisible
// //                           ? Icons.visibility
// //                           : Icons.visibility_off,
// //                     ),
// //                     onPressed: () {
// //                       setState(() {
// //                         _isPasswordVisible = !_isPasswordVisible;
// //                       });
// //                     },
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Password Text Field with visibility toggle
// //               TextField(
// //                 controller: _confirmPasswordController,
// //                 obscureText: !_isPasswordVisible,
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your password again',
// //                   labelText: 'Confirm the Password',
// //                   border: const OutlineInputBorder(),
// //                   suffixIcon: IconButton(
// //                     icon: Icon(
// //                       _isPasswordVisible
// //                           ? Icons.visibility
// //                           : Icons.visibility_off,
// //                     ),
// //                     onPressed: () {
// //                       setState(() {
// //                         _isPasswordVisible = !_isPasswordVisible;
// //                       });
// //                     },
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Sign Up Button
// //               ElevatedButton(
// //                 onPressed: signUp, // Call signUp method when pressed
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.blue, // Set button color
// //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(8.0),
// //                   ),
// //                 ),
// //                 child: const Center(
// //                   child: Text(
// //                     'Sign Up',
// //                     style: TextStyle(
// //                         color: Colors.white), // Set text color to white
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Already have an account? Sign in
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text('Already have an account?'),
// //                   TextButton(
// //                     onPressed: () {
// //                       // Navigate to the Login page
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => const Login()),
// //                       );
// //                     },
// //                     child: const Text(
// //                       'Sign in',
// //                       style: TextStyle(color: Colors.blue),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_kashef/pages/login.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class SignUp extends StatefulWidget {
// //   const SignUp({super.key});

// //   @override
// //   _SignUpPageState createState() => _SignUpPageState();
// // }

// // class _SignUpPageState extends State<SignUp> {
// //   bool _isPasswordVisible = false;
// //   final TextEditingController _phoneController = TextEditingController(text: '+966 ');
// //   final _emailController = TextEditingController();
// //   final _passwordController = TextEditingController();
// //   final _confirmPasswordController = TextEditingController();

 
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance; 

// //   // Method to handle sign up
// //   Future<void> signUp() async {
// //     if (passwordConfirmed()) {
// //       try {
      
// //         UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
// //           email: _emailController.text.trim(),
// //           password: _passwordController.text.trim(),
// //         );

        
// //         String uid = userCredential.user?.uid ?? ''; 

     
// //         await _firestore.collection('users').doc(uid).set({ 
// //           'email': _emailController.text.trim(),
// //           'phone': _phoneController.text.trim(),
// //           'createdAt': DateTime.now(),
// //         });

// //         // التنقل إلى الصفحة الرئيسية أو صفحة تسجيل الدخول بعد نجاح التسجيل
// //         Navigator.of(context).pushReplacementNamed('/'); // تعديل هنا

// //         // إظهار رسالة النجاح
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('تم التسجيل بنجاح وحفظ البيانات!')),
// //         );

// //       } catch (e) {
// //         // التعامل مع الأخطاء
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('خطأ: $e')),
// //         );
// //       }
// //     }
// //   }

// //   bool passwordConfirmed() {
// //     if (_passwordController.text.trim() == _confirmPasswordController.text.trim()) {
// //       return true;
// //     } else {
// //       return false;
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _emailController.dispose();
// //     _passwordController.dispose();
// //     _confirmPasswordController.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // Sign-Up message
// //               const Text(
// //                 'Create a New Account',
// //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 40),

// //               // Name Text Field
// //               const TextField(
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your name',
// //                   labelText: 'Name',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),

// //               // Email Text Field
// //               TextField(
// //                 controller: _emailController,
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your email',
// //                   labelText: 'Email',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Phone Number Text Field (starting with +966)
// //               TextField(
// //                 controller: _phoneController,
// //                 keyboardType: TextInputType.phone,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Phone Number',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),

// //               // Password Text Field with visibility toggle
// //               TextField(
// //                 controller: _passwordController,
// //                 obscureText: !_isPasswordVisible,
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your password',
// //                   labelText: 'Password',
// //                   border: const OutlineInputBorder(),
// //                   suffixIcon: IconButton(
// //                     icon: Icon(
// //                       _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// //                     ),
// //                     onPressed: () {
// //                       setState(() {
// //                         _isPasswordVisible = !_isPasswordVisible;
// //                       });
// //                     },
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Confirm Password Text Field
// //               TextField(
// //                 controller: _confirmPasswordController,
// //                 obscureText: !_isPasswordVisible,
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your password again',
// //                   labelText: 'Confirm the Password',
// //                   border: const OutlineInputBorder(),
// //                   suffixIcon: IconButton(
// //                     icon: Icon(
// //                       _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// //                     ),
// //                     onPressed: () {
// //                       setState(() {
// //                         _isPasswordVisible = !_isPasswordVisible;
// //                       });
// //                     },
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Sign Up Button
// //               ElevatedButton(
// //                 onPressed: signUp, // Call signUp method when pressed
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.blue, // Set button color
// //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(8.0),
// //                   ),
// //                 ),
// //                 child: const Center(
// //                   child: Text(
// //                     'Sign Up',
// //                     style: TextStyle(color: Colors.white), // Set text color to white
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Already have an account? Sign in
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text('Already have an account?'),
// //                   TextButton(
// //                     onPressed: () {
// //                       // Navigate to the Login page
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => const Login()),
// //                       );
// //                     },
// //                     child: const Text(
// //                       'Sign in',
// //                       style: TextStyle(color: Colors.blue),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// // import 'package:flutter/material.dart';
// // import 'package:flutter_kashef/pages/login.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/services.dart'; // new
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class SignUp extends StatefulWidget {
// //   const SignUp({super.key});

// //   @override
// //   _SignUpPageState createState() => _SignUpPageState();
// // }

// // class _SignUpPageState extends State<SignUp> {
// //   final FirebaseAuth _auth = FirebaseAuth.instance;
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// //   bool _isPasswordVisible = false;
// //   final TextEditingController _phoneController = TextEditingController(text: '+966 ');
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _usernameController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Sign-Up message
// //             const Text(
// //               'Create a New Account',
// //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //             ),
// //             const SizedBox(height: 40),

// //             // Name Text Field
// //             TextField(
// //               controller: _usernameController,
// //               decoration: const InputDecoration(
// //                 hintText: 'Enter your name',
// //                 labelText: 'Name',
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // Email Text Field
// //             TextField(
// //               controller: _emailController,
// //               decoration: const InputDecoration(
// //                 hintText: 'Enter your email',
// //                 labelText: 'Email',
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // Phone Number Text Field (with fixed country code +966)
// //             TextField(
// //               controller: _phoneController,
// //               keyboardType: TextInputType.phone,
// //               inputFormatters: [
// //                 LengthLimitingTextInputFormatter(14), // max length: 4 for code + 9 digits
// //               ],
// //               decoration: const InputDecoration(
// //                 labelText: 'Phone Number',
// //                 border: OutlineInputBorder(),
// //               ),
// //               onChanged: (value) {
// //                 // Keep "+966 " at the start
// //                 if (!value.startsWith('+966 ')) {
// //                   _phoneController.text = '+966 ';
// //                   _phoneController.selection = TextSelection.fromPosition(
// //                       TextPosition(offset: _phoneController.text.length));
// //                 }
// //               },
// //             ),
// //             const SizedBox(height: 20),

// //             // Password Text Field with Toggle Visibility
// //             TextField(
// //               controller: _passwordController,
// //               obscureText: !_isPasswordVisible,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter your password',
// //                 labelText: 'Password',
// //                 border: const OutlineInputBorder(),
// //                 suffixIcon: IconButton(
// //                   icon: Icon(
// //                     _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// //                   ),
// //                   onPressed: () {
// //                     setState(() {
// //                       _isPasswordVisible = !_isPasswordVisible;
// //                     });
// //                   },
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // Sign-Up Button
// //             ElevatedButton(
// //               onPressed: () async {
// //                 // Get input values
// //                 String email = _emailController.text;
// //                 String password = _passwordController.text;
// //                 String username = _usernameController.text;
// //                 String phone = _phoneController.text;

// //                 try {
// //                   // Sign up the user
// //                   UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
// //                     email: email,
// //                     password: password,
// //                   );

// //                   // Store user data in Firestore
// //                   await _firestore.collection('users').doc(userCredential.user!.uid).set({
// //                     'username': username,
// //                     'email': email,
// //                     'phone': phone,
// //                     'imageUrl': 'default_image_url',
// //                   });

// //                   // Navigate to the main screen
// //                   Navigator.pushReplacement(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => const Login()),
// //                   );
// //                 } catch (e) {
// //                   print('Error signing up: $e');
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(content: Text('Failed to sign up: $e')),
// //                   );
// //                 }
// //               },
// //               style: ElevatedButton.styleFrom(
// //                 backgroundColor: Colors.blue,
// //                 padding: const EdgeInsets.symmetric(vertical: 16.0),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(8.0),
// //                 ),
// //               ),
// //               child: const Center(
// //                 child: Text(
// //                   'Sign Up',
// //                   style: TextStyle(color: Colors.white),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // Already have an account? Sign in
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 const Text('Already have an account?'),
// //                 TextButton(
// //                   onPressed: () {
// //                     // Navigate to the Login page
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(builder: (context) => const Login()),
// //                     );
// //                   },
// //                   child: const Text(
// //                     'Sign in',
// //                     style: TextStyle(color: Colors.blue),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_kashef/pages/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/services.dart'; // new
// import 'package:cloud_firestore/cloud_firestore.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUp> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   bool _isPasswordVisible = false;
//   final TextEditingController _phoneController = TextEditingController(text: '+966 ');
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Sign-Up message
//             const Text(
//               'Create a New Account',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 40),

//             // Name Text Field
//             TextField(
//               controller: _usernameController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter your name',
//                 labelText: 'Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Email Text Field with validation
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter your email',
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Phone Number Text Field (with fixed country code +966)
//             TextField(
//               controller: _phoneController,
//               keyboardType: TextInputType.phone,
//               inputFormatters: [
//                 LengthLimitingTextInputFormatter(14), // max length: 4 for code + 9 digits
//               ],
//               decoration: const InputDecoration(
//                 labelText: 'Phone Number',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 // Keep "+966 " at the start
//                 if (!value.startsWith('+966 ')) {
//                   _phoneController.text = '+966 ';
//                   _phoneController.selection = TextSelection.fromPosition(
//                       TextPosition(offset: _phoneController.text.length));
//                 }
//               },
//             ),
//             const SizedBox(height: 20),

//             // Password Text Field with Toggle Visibility and validation instruction
//             TextField(
//               controller: _passwordController,
//               obscureText: !_isPasswordVisible,
//               decoration: InputDecoration(
//                 hintText: 'Enter your password',
//                 labelText: 'Password',
//                 border: const OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Sign-Up Button
//             ElevatedButton(
//               onPressed: () async {
//                 // Get input values
//                 String email = _emailController.text.trim();
//                 String password = _passwordController.text.trim();
//                 String username = _usernameController.text.trim();
//                 String phone = _phoneController.text.trim();

//                 // Validation logic
//                 if (!email.endsWith('@gmail.com')) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Email must end with @gmail.com')),
//                   );
//                   return;
//                 }

//                 if (phone.length != 14 || !phone.startsWith('+966 ')) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Phone number must have 9 digits after +966')),
//                   );
//                   return;
//                 }

//                 // Regex for password validation
//                 RegExp passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{9,}$');
//                 if (!passwordRegex.hasMatch(password)) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Password must have at least 9 characters, including uppercase, lowercase, and a number')),
//                   );
//                   return;
//                 }

//                 try {
//                   // Sign up the user
//                   UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//                     email: email,
//                     password: password,
//                   );

//                   // Store user data in Firestore
//                   await _firestore.collection('users').doc(userCredential.user!.uid).set({
//                     'username': username,
//                     'email': email,
//                     'phone': phone,
//                     'imageUrl': 'default_image_url',
//                   });

//                   // Navigate to the main screen
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => const Login()),
//                   );
//                 } catch (e) {
//                   print('Error signing up: $e');
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Failed to sign up: $e')),
//                   );
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//               child: const Center(
//                 child: Text(
//                   'Sign Up',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Already have an account? Sign in
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text('Already have an account?'),
//                 TextButton(
//                   onPressed: () {
//                     // Navigate to the Login page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const Login()),
//                     );
//                   },
//                   child: const Text(
//                     'Sign in',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_kashef/pages/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/services.dart'; // new
// import 'package:cloud_firestore/cloud_firestore.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUp> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   bool _isPasswordVisible = false;
//   final TextEditingController _phoneController = TextEditingController(text: '+966 ');
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   bool _hasUppercase = false;
//   bool _hasLowercase = false;
//   bool _hasDigit = false;
//   bool _hasMinLength = false;

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

//   void _validatePassword(String password) {
//     setState(() {
//       _hasUppercase = password.contains(RegExp(r'[A-Z]'));
//       _hasLowercase = password.contains(RegExp(r'[a-z]'));
//       _hasDigit = password.contains(RegExp(r'\d'));
//       _hasMinLength = password.length >= 9;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Sign-Up message
//             const Text(
//               'Create a New Account',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 40),

//             // Name Text Field
//             TextField(
//               controller: _usernameController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter your name',
//                 labelText: 'Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Email Text Field
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter your email',
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Phone Number Text Field
//             TextField(
//               controller: _phoneController,
//               keyboardType: TextInputType.phone,
//               inputFormatters: [
//                 LengthLimitingTextInputFormatter(14),
//               ],
//               decoration: const InputDecoration(
//                 labelText: 'Phone Number',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 if (!value.startsWith('+966 ')) {
//                   _phoneController.text = '+966 ';
//                   _phoneController.selection = TextSelection.fromPosition(
//                       TextPosition(offset: _phoneController.text.length));
//                 }
//               },
//             ),
//             const SizedBox(height: 20),

//             // Password Text Field with Toggle Visibility
//             TextField(
//               controller: _passwordController,
//               obscureText: !_isPasswordVisible,
//               onChanged: _validatePassword,
//               decoration: InputDecoration(
//                 hintText: 'Enter your password',
//                 labelText: 'Password',
//                 border: const OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),

//             // Password Instructions
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _buildPasswordInstruction(
//                   'At least 9 characters',
//                   _hasMinLength,
//                 ),
//                 _buildPasswordInstruction(
//                   'Contains at least one uppercase letter',
//                   _hasUppercase,
//                 ),
//                 _buildPasswordInstruction(
//                   'Contains at least one lowercase letter',
//                   _hasLowercase,
//                 ),
//                 _buildPasswordInstruction(
//                   'Contains at least one number',
//                   _hasDigit,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),

//             // Sign-Up Button
//             ElevatedButton(
//               onPressed: () async {
//                 String email = _emailController.text.trim();
//                 String password = _passwordController.text.trim();
//                 String username = _usernameController.text.trim();
//                 String phone = _phoneController.text.trim();

//                 // Validation logic
//                 if (!email.endsWith('@gmail.com')) {
//                   _showSnackBar('Email must end with @gmail.com', Colors.red);
//                   return;
//                 }

//                 if (phone.length != 14 || !phone.startsWith('+966 ')) {
//                   _showSnackBar('Phone number must have 9 digits after +966', Colors.red);
//                   return;
//                 }

//                 if (!_hasMinLength || !_hasUppercase || !_hasLowercase || !_hasDigit) {
//                   _showSnackBar('Password does not meet all requirements', Colors.red);
//                   return;
//                 }

//                 try {
//                   UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//                     email: email,
//                     password: password,
//                   );

//                   await _firestore.collection('users').doc(userCredential.user!.uid).set({
//                     'username': username,
//                     'email': email,
//                     'phone': phone,
//                     'imageUrl': 'default_image_url',
//                   });

//                   _showSnackBar('Sign up successful!', Colors.green);

//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => const Login()),
//                   );
//                 } catch (e) {
//                   _showSnackBar('Failed to sign up: $e', Colors.red);
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//               child: const Center(
//                 child: Text(
//                   'Sign Up',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Already have an account? Sign in
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text('Already have an account?'),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const Login()),
//                     );
//                   },
//                   child: const Text(
//                     'Sign in',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPasswordInstruction(String text, bool conditionMet) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 5.0),
//       child: Row(
//         children: [
//           Icon(
//             conditionMet ? Icons.check_circle : Icons.cancel,
//             color: conditionMet ? Colors.green : Colors.red,
//             size: 20,
//           ),
//           const SizedBox(width: 8),
//           Text(
//             text,
//             style: TextStyle(
//               color: conditionMet ? Colors.green : Colors.red,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_kashef/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  bool _isPasswordVisible = false;
  final TextEditingController _phoneController = TextEditingController(text: '+966 ');
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _hasUppercase = false;
  bool _hasLowercase = false;
  bool _hasDigit = false;
  bool _hasMinLength = false;

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

  void _validatePassword(String password) {
    setState(() {
      _hasUppercase = password.contains(RegExp(r'[A-Z]'));
      _hasLowercase = password.contains(RegExp(r'[a-z]'));
      _hasDigit = password.contains(RegExp(r'\d'));
      _hasMinLength = password.length >= 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sign-Up message
            const Text(
              'Create a New Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),

            // Name Text Field
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Email Text Field
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Phone Number Text Field
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                LengthLimitingTextInputFormatter(14),
              ],
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                if (!value.startsWith('+966 ')) {
                  _phoneController.text = '+966 ';
                  _phoneController.selection = TextSelection.fromPosition(
                      TextPosition(offset: _phoneController.text.length));
                }
              },
            ),
            const SizedBox(height: 20),

            // Password Text Field with Toggle Visibility
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              onChanged: _validatePassword,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Password Instructions
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildPasswordInstruction(
                  'At least 9 characters',
                  _hasMinLength,
                ),
                _buildPasswordInstruction(
                  'Contains at least one uppercase letter',
                  _hasUppercase,
                ),
                _buildPasswordInstruction(
                  'Contains at least one lowercase letter',
                  _hasLowercase,
                ),
                _buildPasswordInstruction(
                  'Contains at least one number',
                  _hasDigit,
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Sign-Up Button
            ElevatedButton(
              onPressed: () async {
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();
                String username = _usernameController.text.trim();
                String phone = _phoneController.text.trim();

                // Validation logic
                if (!email.endsWith('@gmail.com')) {
                  _showSnackBar('Email must end with @gmail.com', Colors.red);
                  return;
                }

                if (phone.length != 14 || !phone.startsWith('+966 ')) {
                  _showSnackBar('Phone number must have 9 digits after +966', Colors.red);
                  return;
                }

                if (!_hasMinLength || !_hasUppercase || !_hasLowercase || !_hasDigit) {
                  _showSnackBar('Password does not meet all requirements', Colors.red);
                  return;
                }

                try {
                  UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
                    email: email,
                    password: password,
                  );

                  await _firestore.collection('users').doc(userCredential.user!.uid).set({
                    'username': username,
                    'email': email,
                    'phone': phone,
                    'imageUrl': 'default_image_url',
                  });

                  _showSnackBar('Sign up successful!', Colors.green);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                } catch (e) {
                  _showSnackBar('Failed to sign up: $e', Colors.red);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Already have an account? Sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordInstruction(String text, bool conditionMet) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Icon(
            conditionMet ? Icons.check_circle : Icons.cancel,
            color: conditionMet ? Colors.green : Colors.red,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: conditionMet ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
