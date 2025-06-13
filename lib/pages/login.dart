// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_kashef/pages/signup.dart';
// // // import 'sign_up_page.dart'; // Import the SignUpPage file

// // class Login extends StatefulWidget {
// //   const Login({super.key});

// //   @override
// //   _LoginPageState createState() => _LoginPageState();
// // }

// // class _LoginPageState extends State<Login> {
// //   bool _rememberMe = false;
// //   final _emailController = TextEditingController();
// //   final _passwordController = TextEditingController();

// //   Future<void> signIn() async {
// //     try {
// //       await FirebaseAuth.instance.signInWithEmailAndPassword(
// //         email: _emailController.text.trim(),
// //         password: _passwordController.text.trim(),
// //       );
// //       // If login is successful, navigate to MainScreen
// //       Navigator.of(context).pushReplacementNamed('/MainScreen');/////
// //     } catch (e) {
// //       // Show an error message if login fails
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Failed to sign in: ${e.toString()}')),
// //       );
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _emailController.dispose();
// //     _passwordController.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Spacer(),
// //               // Welcome message with colored emoji
// //               RichText(
// //                 text: const TextSpan(
// //                   style: TextStyle(
// //                       fontSize: 24,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black),
// //                   children: <TextSpan>[
// //                     TextSpan(text: 'Hi, Welcome Back! '),
// //                     TextSpan(
// //                       text: '👋',
// //                       style: TextStyle(
// //                           fontSize: 24, color: Colors.yellow), // Emoji color
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               const SizedBox(height: 40),

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

// //               // Password Text Field
// //               TextField(
// //                 controller: _passwordController,
// //                 obscureText: true,
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your password',
// //                   labelText: 'Password',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),

// //               // Login Button
// //               ElevatedButton(
// //                 onPressed: signIn, // Call your signIn method here
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.blue,
// //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(8.0),
// //                   ),
// //                 ),
// //                 child: const Center(
// //                   child: Text(
// //                     'Login',
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // Remember Me and Forgot Password
// //               Row(
// //                 children: [
// //                   Checkbox(
// //                     value: _rememberMe,
// //                     onChanged: (bool? value) {
// //                       setState(() {
// //                         _rememberMe = value ?? false;
// //                       });
// //                     },
// //                   ),
// //                   const Text('Remember me'),
// //                   const Spacer(),
// //                   TextButton(
// //                     onPressed: () {
// //                       // Handle forgot password logic here
// //                     },
// //                     child: const Text(
// //                       'Forgot password?',
// //                       style: TextStyle(color: Colors.grey),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Spacer(),
// //               // Sign Up
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text("Don’t have an account? "),
// //                   TextButton(
// //                     onPressed: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => SignUp()),
// //                       );
// //                     },
// //                     child: const Text(
// //                       'Sign up',
// //                       style: TextStyle(
// //                           color: Colors.blue, fontWeight: FontWeight.bold),
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
// // import 'package:flutter_kashef/pages/signup.dart';

// // class Login extends StatefulWidget {
// //   const Login({super.key});

// //   @override
// //   _LoginPageState createState() => _LoginPageState();
// // }

// // class _LoginPageState extends State<Login> {
// //   bool _rememberMe = false;
// //   final _emailController = TextEditingController();
// //   final _passwordController = TextEditingController();

// //   Future<void> signIn() async {
// //     try {
// //       await FirebaseAuth.instance.signInWithEmailAndPassword(
// //         email: _emailController.text.trim(),
// //         password: _passwordController.text.trim(),
// //       );
// //       Navigator.of(context).pushReplacementNamed('/MainScreen');
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Failed to sign in: ${e.toString()}')),
// //       );
// //     }
// //   }

// //   Future<void> _sendPasswordResetEmail() async {
// //     try {
// //       await FirebaseAuth.instance
// //           .sendPasswordResetEmail(email: _emailController.text.trim());
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //             content: Text(
// //                 'Password reset link sent! Please check your email.')),
// //       );
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Error: ${e.toString()}')),
// //       );
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _emailController.dispose();
// //     _passwordController.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Spacer(),
// //               RichText(
// //                 text: const TextSpan(
// //                   style: TextStyle(
// //                       fontSize: 24,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black),
// //                   children: <TextSpan>[
// //                     TextSpan(text: 'Hi, Welcome Back! '),
// //                     TextSpan(
// //                       text: '👋',
// //                       style: TextStyle(fontSize: 24, color: Colors.yellow),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               const SizedBox(height: 40),
// //               TextField(
// //                 controller: _emailController,
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your email',
// //                   labelText: 'Email',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               TextField(
// //                 controller: _passwordController,
// //                 obscureText: true,
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your password',
// //                   labelText: 'Password',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: signIn,
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.blue,
// //                   padding: const EdgeInsets.symmetric(vertical: 16.0),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(8.0),
// //                   ),
// //                 ),
// //                 child: const Center(
// //                   child: Text(
// //                     'Login',
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               Row(
// //                 children: [
// //                   Checkbox(
// //                     value: _rememberMe,
// //                     onChanged: (bool? value) {
// //                       setState(() {
// //                         _rememberMe = value ?? false;
// //                       });
// //                     },
// //                   ),
// //                   const Text('Remember me'),
// //                   const Spacer(),
// //                   TextButton(
// //                     onPressed: _sendPasswordResetEmail,
// //                     child: const Text(
// //                       'Forgot password?',
// //                       style: TextStyle(color: Colors.grey),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Spacer(),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text("Don’t have an account? "),
// //                   TextButton(
// //                     onPressed: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => SignUp()),
// //                       );
// //                     },
// //                     child: const Text(
// //                       'Sign up',
// //                       style: TextStyle(
// //                           color: Colors.blue, fontWeight: FontWeight.bold),
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

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_kashef/pages/signup.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<Login> {
//   bool _rememberMe = false;
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

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

//   Future<void> signIn() async {
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//       );
//       _showSnackBar('Login successful!', Colors.green);
//       Navigator.of(context).pushReplacementNamed('/MainScreen');
//     } catch (e) {
//       _showSnackBar('Failed to sign in: ${e.toString()}', Colors.red);
//     }
//   }

//   Future<void> _sendPasswordResetEmail() async {
//     try {
//       await FirebaseAuth.instance
//           .sendPasswordResetEmail(email: _emailController.text.trim());
//       _showSnackBar('Password reset link sent! Please check your email.', Colors.green);
//     } catch (e) {
//       _showSnackBar('Error: ${e.toString()}', Colors.red);
//     }
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Spacer(),
//               RichText(
//                 text: const TextSpan(
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black),
//                   children: <TextSpan>[
//                     TextSpan(text: 'Hi, Welcome Back! '),
//                     TextSpan(
//                       text: '👋',
//                       style: TextStyle(fontSize: 24, color: Colors.yellow),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               TextField(
//                 controller: _emailController,
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your email',
//                   labelText: 'Email',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your password',
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: signIn,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.symmetric(vertical: 16.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     'Login',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   Checkbox(
//                     value: _rememberMe,
//                     onChanged: (bool? value) {
//                       setState(() {
//                         _rememberMe = value ?? false;
//                       });
//                     },
//                   ),
//                   const Text('Remember me'),
//                   const Spacer(),
//                   TextButton(
//                     onPressed: _sendPasswordResetEmail,
//                     child: const Text(
//                       'Forgot password?',
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                   ),
//                 ],
//               ),
//               Spacer(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Don’t have an account? "),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => SignUp()),
//                       );
//                     },
//                     child: const Text(
//                       'Sign up',
//                       style: TextStyle(
//                           color: Colors.blue, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kashef/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  bool _rememberMe = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true; // للتحكم بعرض/إخفاء كلمة المرور

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

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      _showSnackBar('Login successful!', Colors.green);
      Navigator.of(context).pushReplacementNamed('/MainScreen');
    } catch (e) {
      _showSnackBar('Failed to sign in: ${e.toString()}', Colors.red);
    }
  }

  Future<void> _sendPasswordResetEmail() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      _showSnackBar('Password reset link sent! Please check your email.', Colors.green);
    } catch (e) {
      _showSnackBar('Error: ${e.toString()}', Colors.red);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: 'Hi, Welcome Back! '),
                    TextSpan(
                      text: '👋',
                      style: TextStyle(fontSize: 24, color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword; // عكس الحالة
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: signIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                  ),
                  
                  const Spacer(),
                  TextButton(
                    onPressed: _sendPasswordResetEmail,
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

