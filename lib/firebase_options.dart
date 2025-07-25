// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCfUTEjbWDWgYf1t3_-A7weTwYIc-l94yo',
    appId: '1:761727303506:web:d3f80cc054ccd68e84848b',
    messagingSenderId: '761727303506',
    projectId: 'kashef-496a8',
    authDomain: 'kashef-496a8.firebaseapp.com',
    databaseURL: 'https://kashef-496a8-default-rtdb.firebaseio.com',
    storageBucket: 'kashef-496a8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBu-LjUVN0Dc_lLbqKrBbq1l8HnsOw15gI',
    appId: '1:761727303506:android:749cb89e433c711484848b',
    messagingSenderId: '761727303506',
    projectId: 'kashef-496a8',
    databaseURL: 'https://kashef-496a8-default-rtdb.firebaseio.com',
    storageBucket: 'kashef-496a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmG_S_py5foMT_4g_lgglqtm52JOzU1TA',
    appId: '1:761727303506:ios:33b61bb9abc5a39184848b',
    messagingSenderId: '761727303506',
    projectId: 'kashef-496a8',
    databaseURL: 'https://kashef-496a8-default-rtdb.firebaseio.com',
    storageBucket: 'kashef-496a8.appspot.com',
    iosBundleId: 'com.example.flutterKashef',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmG_S_py5foMT_4g_lgglqtm52JOzU1TA',
    appId: '1:761727303506:ios:33b61bb9abc5a39184848b',
    messagingSenderId: '761727303506',
    projectId: 'kashef-496a8',
    databaseURL: 'https://kashef-496a8-default-rtdb.firebaseio.com',
    storageBucket: 'kashef-496a8.appspot.com',
    iosBundleId: 'com.example.flutterKashef',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCfUTEjbWDWgYf1t3_-A7weTwYIc-l94yo',
    appId: '1:761727303506:web:2ae6e2b03002f97e84848b',
    messagingSenderId: '761727303506',
    projectId: 'kashef-496a8',
    authDomain: 'kashef-496a8.firebaseapp.com',
    databaseURL: 'https://kashef-496a8-default-rtdb.firebaseio.com',
    storageBucket: 'kashef-496a8.appspot.com',
  );
}
