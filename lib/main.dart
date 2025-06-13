// // // import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_kashef/pages/Auth.dart';
// // // import 'package:flutter_kashef/pages/addcamera.dart';
// // // import 'package:flutter_kashef/pages/alerts.dart';
// // // import 'package:flutter_kashef/pages/history.dart';
// // // import 'package:flutter_kashef/pages/profile.dart';
// // // import 'package:flutter_kashef/pages/login.dart';
// // // import 'package:flutter_kashef/pages/signup.dart';
// // // import 'package:flutter_kashef/pages/welcome.dart';
// // // import 'package:firebase_core/firebase_core.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   await Firebase.initializeApp();
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: const Auth(),  // Use Auth as the home widget for authentication logic
// // //       routes: {
// // //         // "/": (context) => const Welcome(),  // Uncomment if you want the Welcome page first
// // //         "/MainScreen": (context) => const MainScreen(),
// // //         "/login": (context) => const Login(),
// // //         "/signup": (context) => const SignUp(),
// // //       },
// // //     );
// // //   }
// // // }

// // // // MainScreen with CurvedNavigationBar and IndexedStack
// // // class MainScreen extends StatefulWidget {
// // //   const MainScreen({Key? key}) : super(key: key);

// // //   @override
// // //   _MainScreenState createState() => _MainScreenState();
// // // }

// // // class _MainScreenState extends State<MainScreen> {
// // //   int _currentIndex = 0; // The current index of the selected tab

// // //   // List of pages to display for each tab
// // //   final List<Widget> _pages = [
// // //     Addcamera(),
// // //     History(), // The History page (ensure you removed `const` in History widget)
// // //     Alerts(),
// // //     Profile(),
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       // IndexedStack ensures that the state of each page is preserved
// // //       body: IndexedStack(
// // //         index: _currentIndex, // Keep the state of each page
// // //         children: _pages, // Display the selected page
// // //       ),
// // //       bottomNavigationBar: CurvedNavigationBar(
// // //         index: _currentIndex,
// // //         items: const <Widget>[
// // //           Icon(Icons.camera_enhance_rounded, size: 30),
// // //           Icon(Icons.history, size: 30),
// // //           Icon(Icons.warning_rounded, size: 30),
// // //           Icon(Icons.person, size: 30),
// // //         ],
// // //         animationDuration: const Duration(milliseconds: 200),
// // //         onTap: (index) {
// // //           setState(() {
// // //             _currentIndex =
// // //                 index; // Update the current index to change the page
// // //           });
// // //         },
// // //         backgroundColor:
// // //             const Color.fromARGB(0, 255, 255, 255), // Transparent background
// // //         color: const Color.fromARGB(255, 255, 255, 255), // White bar color
// // //         buttonBackgroundColor:
// // //             Color.fromARGB(133, 29, 29, 150), // Grey button background
// // //         height: 75,
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter_kashef/pages/auth.dart';
// // import 'package:flutter_kashef/pages/login.dart';
// // import 'package:flutter_kashef/pages/main_screen.dart';
// // import 'package:flutter_kashef/pages/signup.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'firebase_options.dart';
// // import 'cameraPage.dart';
// // //import 'alerts.dart';

// // //Import the MainScreen

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //       options: DefaultFirebaseOptions.currentPlatform); // this is wrong

// //   //how to connect your firebase to yoour flutter app:
// //   //1- use FLutterFire configure, ( see youtube )
// //   // the line should be : await Firebase.initliazeApp(options: DefaultFirebaseOptions.currentPlatform);
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       theme: ThemeData().copyWith(
// //           scaffoldBackgroundColor: Colors.white,
// //           textTheme: GoogleFonts.poppinsTextTheme()),
// //       debugShowCheckedModeBanner: false,
// //       // home: const Auth(),
// //       title: 'Camera App',
// //       initialRoute: '/',
// //       routes: {
// //         '/': (context) => const Auth(),
// //         '/MainScreen': (context) => const MainScreen(), // Add MainScreen route
// //         '/login': (context) => const Login(),
// //         '/signup': (context) => const SignUp(),
// //        // '/': (context) => CameraPage(),
// //        // '/alerts': (context) => Alerts(),
// //       },
// //     );
// //   }
// // }
// // //  import 'package:flutter/material.dart';
// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:flutter_kashef/pages/auth.dart';
// // // import 'package:flutter_kashef/pages/login.dart';
// // // import 'package:flutter_kashef/pages/main_screen.dart';
// // // import 'package:flutter_kashef/pages/signup.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'firebase_options.dart';
// // // import 'cameraPage.dart';
// // // //import 'Alerts.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   await Firebase.initializeApp(
// // //     options: DefaultFirebaseOptions.currentPlatform,
// // //   );

// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       theme: ThemeData().copyWith(
// // //         scaffoldBackgroundColor: Colors.white,
// // //         textTheme: GoogleFonts.poppinsTextTheme(),
// // //       ),
// // //       debugShowCheckedModeBanner: false,
// // //       title: 'Camera App',
// // //       initialRoute: '/', // تعيين المسار الأساسي
// // //       routes: {
// // //         '/': (context) => const Auth(),
// // //         '/MainScreen': (context) => const MainScreen(),
// // //         '/login': (context) => const Login(),
// // //         '/signup': (context) => const SignUp(),
// // //         '/camera': (context) => CameraPage(),

// // //       },
// // //     );
// // //   }
// // // }

// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_kashef/pages/auth.dart';
// import 'package:flutter_kashef/pages/login.dart';
// import 'package:flutter_kashef/pages/main_screen.dart';
// import 'package:flutter_kashef/pages/signup.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart'; // استيراد Provider
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'firebase_options.dart';
// import 'models/ImageProviderModel.dart'; // تأكد من أن المسار صحيح

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   await Supabase.initialize(
//     url: "https://fhocmeybhrszgjmndrbh.supabase.co",
//     anonKey:
//         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZob2NtZXliaHJzemdqbW5kcmJoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA2NTQwMDEsImV4cCI6MjA0NjIzMDAwMX0.hzIFIgPKvlxIcnr4K-xPRuaHW3zrvoNt5X8MgwAldns",
//   );

//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => ImageProviderModel()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData().copyWith(
//         scaffoldBackgroundColor: Colors.white,
//         textTheme: GoogleFonts.poppinsTextTheme(),
//       ),
//       debugShowCheckedModeBanner: false,
//       title: 'Camera App',
//       initialRoute: '/',
//       routes: {
//   '/': (context) => const Auth(),
//   '/MainScreen': (context) => const MainScreen(),
//   '/login': (context) => const Login(),
//   '/signup': (context) => const SignUp(),
 
// },

//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_kashef/pages/auth.dart';
import 'package:flutter_kashef/pages/login.dart';
import 'package:flutter_kashef/pages/main_screen.dart';
import 'package:flutter_kashef/pages/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'firebase_options.dart';
import 'models/ImageProviderModel.dart';
import 'package:flutter_kashef/pages/Alerts.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // تهيئة Supabase
  await Supabase.initialize(
    url: "https://fhocmeybhrszgjmndrbh.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZob2NtZXliaHJzemdqbW5kcmJoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA2NTQwMDEsImV4cCI6MjA0NjIzMDAwMX0.hzIFIgPKvlxIcnr4K-xPRuaHW3zrvoNt5X8MgwAldns",
  );

  // تهيئة Awesome Notifications
  AwesomeNotifications().initialize(
    null, // استخدام الأيقونة الافتراضية للإشعارات
    [
      NotificationChannel(
        channelKey: 'basic_channel', // مفتاح القناة الفريد
        channelName: 'Basic Notifications', // اسم القناة
        channelDescription: 'Notification channel for alerts', // وصف القناة
        defaultColor: const Color(0xFF9D50DD), // اللون الافتراضي للإشعار
        ledColor: Colors.white, // لون LED عند تشغيل الإشعار
        importance: NotificationImportance.High, // أهمية الإشعار
      ),
    ],
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ImageProviderModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // طلب الإذن للإشعارات
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });

    return MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Camera App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Auth(),
        '/MainScreen': (context) => const MainScreen(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}