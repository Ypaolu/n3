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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD9Xu7BM1I7P4sFMRyVIwxzRb5ES5bfzJY',
    appId: '1:1085338169544:web:8bbd72bf0c9b183ba0f5fd',
    messagingSenderId: '1085338169544',
    projectId: 'n3auth-8c183',
    authDomain: 'n3auth-8c183.firebaseapp.com',
    storageBucket: 'n3auth-8c183.firebasestorage.app',
    measurementId: 'G-P47KQ8CMH6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7Tb2TQIFYOSHAMPesV_visGGUg8mn-3w',
    appId: '1:1085338169544:android:0694d64ea0e9017fa0f5fd',
    messagingSenderId: '1085338169544',
    projectId: 'n3auth-8c183',
    storageBucket: 'n3auth-8c183.firebasestorage.app',
  );
}