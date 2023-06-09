// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDHogbkV_yczrFsazhyCfjCpLqy0d4FlqY',
    appId: '1:1031036034687:web:d5f391d09056fcbfe9294a',
    messagingSenderId: '1031036034687',
    projectId: 'test-app-3f78f',
    authDomain: 'test-app-3f78f.firebaseapp.com',
    databaseURL: 'https://test-app-3f78f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-app-3f78f.appspot.com',
    measurementId: 'G-PKD0BFR2BM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWF_OUinGc7X7VlDckGe4DNte0rNamJvM',
    appId: '1:1031036034687:android:429aee6a70eb4f76e9294a',
    messagingSenderId: '1031036034687',
    projectId: 'test-app-3f78f',
    databaseURL: 'https://test-app-3f78f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-app-3f78f.appspot.com',
  );
}
