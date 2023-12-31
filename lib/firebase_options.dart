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
    apiKey: 'AIzaSyCgBpufWqdnK6gmP3FGpB5b_zzcD2uZt2M',
    appId: '1:801785724515:web:3487465528ec440a0d8256',
    messagingSenderId: '801785724515',
    projectId: 'flutter-projects-d3999',
    authDomain: 'flutter-projects-d3999.firebaseapp.com',
    storageBucket: 'flutter-projects-d3999.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBd-ImrsQIJRgJiDChnq1fFu9B4ZcOCpeY',
    appId: '1:801785724515:android:77915b88a4de65530d8256',
    messagingSenderId: '801785724515',
    projectId: 'flutter-projects-d3999',
    storageBucket: 'flutter-projects-d3999.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCulY2GkO9Qp0E3O-R4VYUVq4BpViizAVU',
    appId: '1:801785724515:ios:98d38f93faf1ec920d8256',
    messagingSenderId: '801785724515',
    projectId: 'flutter-projects-d3999',
    storageBucket: 'flutter-projects-d3999.appspot.com',
    iosClientId: '801785724515-u488clat0bnk4ot8u6toml4ecg7n7u13.apps.googleusercontent.com',
    iosBundleId: 'com.example.checklistPictured',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCulY2GkO9Qp0E3O-R4VYUVq4BpViizAVU',
    appId: '1:801785724515:ios:bccc284ec2e4bebc0d8256',
    messagingSenderId: '801785724515',
    projectId: 'flutter-projects-d3999',
    storageBucket: 'flutter-projects-d3999.appspot.com',
    iosClientId: '801785724515-jiqnqjrcnbhoivg3uh72pnkhd8ulk8fm.apps.googleusercontent.com',
    iosBundleId: 'com.example.checklistPictured.RunnerTests',
  );
}
