// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_kashef/pages/Profile.dart';
// import 'package:flutter_kashef/pages/login.dart';

// class Auth extends StatelessWidget {
//   const Auth({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: StreamBuilder<User?>(
//             stream: FirebaseAuth.instance.authStateChanges(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Profile();
//               } else {
//                 return Login();
//               }
//             }));
//   }
// }

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_kashef/pages/login.dart';

// import '../main.dart';

// class Auth extends StatelessWidget {
//   const Auth({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             // If the user is authenticated, navigate to MainScreen
//             return MainScreen();
//           } else {
//             // If the user is not authenticated, show the Login page
//             return Login();
//           }
//         },
//       ),
//     );
//   }
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart'; // Import MainScreen
import 'login.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // User is logged in, navigate to MainScreen
          return const MainScreen();
        } else {
          // User is not logged in, show the Login page
          return const Login();
        }
      },
    );
  }
}
