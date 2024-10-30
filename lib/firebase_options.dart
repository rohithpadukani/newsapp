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
    apiKey: 'AIzaSyBhMFfPPfewdNEvw-K4VEMPp9wlcXYFxWE',
    appId: '1:557743019729:web:dfc2d06b9a6d10c0a517f0',
    messagingSenderId: '557743019729',
    projectId: 'flutter-news-5d178',
    authDomain: 'flutter-news-5d178.firebaseapp.com',
    storageBucket: 'flutter-news-5d178.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzNTUFkeVk4vB_FzYXF9eZTlFFcRkDohA',
    appId: '1:557743019729:android:e685fa5a63f0c1eda517f0',
    messagingSenderId: '557743019729',
    projectId: 'flutter-news-5d178',
    storageBucket: 'flutter-news-5d178.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAA_E9fujFAzPw8Yq27nMVcnJROUoxPFMM',
    appId: '1:557743019729:ios:dd1ac56d770e21eba517f0',
    messagingSenderId: '557743019729',
    projectId: 'flutter-news-5d178',
    storageBucket: 'flutter-news-5d178.appspot.com',
    iosBundleId: 'com.example.flutterNews',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAA_E9fujFAzPw8Yq27nMVcnJROUoxPFMM',
    appId: '1:557743019729:ios:dd1ac56d770e21eba517f0',
    messagingSenderId: '557743019729',
    projectId: 'flutter-news-5d178',
    storageBucket: 'flutter-news-5d178.appspot.com',
    iosBundleId: 'com.example.flutterNews',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBhMFfPPfewdNEvw-K4VEMPp9wlcXYFxWE',
    appId: '1:557743019729:web:24cd3d1667a6f486a517f0',
    messagingSenderId: '557743019729',
    projectId: 'flutter-news-5d178',
    authDomain: 'flutter-news-5d178.firebaseapp.com',
    storageBucket: 'flutter-news-5d178.appspot.com',
  );
}
