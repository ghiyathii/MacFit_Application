// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyCaVXOmnw3zFxLBJDLa7QSW0vMdupXCGlQ',
    appId: '1:606274303870:web:3a72f132e8792b47c2e52f',
    messagingSenderId: '606274303870',
    projectId: 'macfit-final',
    authDomain: 'macfit-final.firebaseapp.com',
    storageBucket: 'macfit-final.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCL7alnYVTiZ2SLwRR5YoMBNqhfZqH31WE',
    appId: '1:606274303870:android:95eaddcd1e2ea1adc2e52f',
    messagingSenderId: '606274303870',
    projectId: 'macfit-final',
    storageBucket: 'macfit-final.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJQodY4rgiUp5gCDcld_5NQ8SDiNbvxFs',
    appId: '1:606274303870:ios:67429ddf1a631d08c2e52f',
    messagingSenderId: '606274303870',
    projectId: 'macfit-final',
    storageBucket: 'macfit-final.appspot.com',
    iosBundleId: 'com.example.macfit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJQodY4rgiUp5gCDcld_5NQ8SDiNbvxFs',
    appId: '1:606274303870:ios:632a1d7f64e1eafac2e52f',
    messagingSenderId: '606274303870',
    projectId: 'macfit-final',
    storageBucket: 'macfit-final.appspot.com',
    iosBundleId: 'com.example.macfit.RunnerTests',
  );
}