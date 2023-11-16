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
    apiKey: 'AIzaSyBXKJF1Hbs2xY_bHS9YmWVBRTo-sWoRgfQ',
    appId: '1:921106020688:web:78f65907499573b6d95455',
    messagingSenderId: '921106020688',
    projectId: 'yummy-chat-20231116',
    authDomain: 'yummy-chat-20231116.firebaseapp.com',
    storageBucket: 'yummy-chat-20231116.appspot.com',
    measurementId: 'G-B6K8CKX733',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDl50hZNR7gqhVZFjVJL5_UBWlObxArYz4',
    appId: '1:921106020688:android:8551f2161a31a2abd95455',
    messagingSenderId: '921106020688',
    projectId: 'yummy-chat-20231116',
    storageBucket: 'yummy-chat-20231116.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7YDDfjgkd3XK1Zt8qtbKzV2BKwnwWKmA',
    appId: '1:921106020688:ios:dc005fc6df5072e3d95455',
    messagingSenderId: '921106020688',
    projectId: 'yummy-chat-20231116',
    storageBucket: 'yummy-chat-20231116.appspot.com',
    iosBundleId: 'kr.kimdh.studyFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7YDDfjgkd3XK1Zt8qtbKzV2BKwnwWKmA',
    appId: '1:921106020688:ios:5768569988369f0ed95455',
    messagingSenderId: '921106020688',
    projectId: 'yummy-chat-20231116',
    storageBucket: 'yummy-chat-20231116.appspot.com',
    iosBundleId: 'kr.kimdh.studyFlutter.RunnerTests',
  );
}