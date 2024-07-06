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
    apiKey: 'AIzaSyCVO97as3gjGPGC4XPhT7Ir7qC_SkCRt_8',
    appId: '1:690981922172:web:d1cec5de8d4853c7aaf0f9',
    messagingSenderId: '690981922172',
    projectId: 'geobotapp',
    authDomain: 'geobotapp.firebaseapp.com',
    storageBucket: 'geobotapp.appspot.com',
    measurementId: 'G-92RDVTMNDD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpjd6D_5Ya6po2p5VUbvIne3k3PeQ0uJE',
    appId: '1:690981922172:android:fde4954ba019d8a7aaf0f9',
    messagingSenderId: '690981922172',
    projectId: 'geobotapp',
    storageBucket: 'geobotapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOtFUee8h6WE9HtEUVo3y9rlhnLM6Mr3w',
    appId: '1:690981922172:ios:7085c13075dbaae7aaf0f9',
    messagingSenderId: '690981922172',
    projectId: 'geobotapp',
    storageBucket: 'geobotapp.appspot.com',
    iosBundleId: 'com.example.geoBot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOtFUee8h6WE9HtEUVo3y9rlhnLM6Mr3w',
    appId: '1:690981922172:ios:7085c13075dbaae7aaf0f9',
    messagingSenderId: '690981922172',
    projectId: 'geobotapp',
    storageBucket: 'geobotapp.appspot.com',
    iosBundleId: 'com.example.geoBot',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCVO97as3gjGPGC4XPhT7Ir7qC_SkCRt_8',
    appId: '1:690981922172:web:860f0c403127821baaf0f9',
    messagingSenderId: '690981922172',
    projectId: 'geobotapp',
    authDomain: 'geobotapp.firebaseapp.com',
    storageBucket: 'geobotapp.appspot.com',
    measurementId: 'G-CWS79WWSGW',
  );
}