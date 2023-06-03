// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';
    

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB-MWGSKaF8AXhf0RJ62UhUlNStaP1bp6k',
    appId: '1:510528071555:web:bd31a8d7fc900d1ac9f8b6',
    messagingSenderId: '510528071555',
    projectId: 'ansi-6e142',
    authDomain: 'ansi-6e142.firebaseapp.com',
    storageBucket: 'ansi-6e142.appspot.com',
    measurementId: 'G-3SX81HQYXL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBovCiQtjq_9-YYW751Oz1vq_J_AgOLorw',
    appId: '1:510528071555:android:ed9481e9e25e2b15c9f8b6',
    messagingSenderId: '510528071555',
    projectId: 'ansi-6e142',
    storageBucket: 'ansi-6e142.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHSGLGytEKe1Y1ZF59C5JUT8MJ2wOsp0Y',
    appId: '1:510528071555:ios:e55f2fe3c90b2046c9f8b6',
    messagingSenderId: '510528071555',
    projectId: 'ansi-6e142',
    storageBucket: 'ansi-6e142.appspot.com',
    iosBundleId: 'com.example.ejercicio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHSGLGytEKe1Y1ZF59C5JUT8MJ2wOsp0Y',
    appId: '1:510528071555:ios:e55f2fe3c90b2046c9f8b6',
    messagingSenderId: '510528071555',
    projectId: 'ansi-6e142',
    storageBucket: 'ansi-6e142.appspot.com',
    iosBundleId: 'com.example.ejercicio',
  );
}
