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
    apiKey: 'AIzaSyDwXdRp5j7AQNq-B3vg2oQz3GOmh9R2Eh8',
    appId: '1:564334631063:web:332ff78b27559bf08171d2',
    messagingSenderId: '564334631063',
    projectId: 'ecommerce-f6d64',
    authDomain: 'ecommerce-f6d64.firebaseapp.com',
    storageBucket: 'ecommerce-f6d64.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdfpQpIso1uxS4vLYezCPn_SsCe9m1lU8',
    appId: '1:564334631063:android:6cd2f589c1f321e08171d2',
    messagingSenderId: '564334631063',
    projectId: 'ecommerce-f6d64',
    storageBucket: 'ecommerce-f6d64.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYX5k1fQXqp4qRi6WGxxw8xTJ6naf-Si4',
    appId: '1:564334631063:ios:bf0f4b07d6ad39f58171d2',
    messagingSenderId: '564334631063',
    projectId: 'ecommerce-f6d64',
    storageBucket: 'ecommerce-f6d64.appspot.com',
    iosClientId:
        '564334631063-sa0g0b9m8jsic96v12pr13k1khobr5nr.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYX5k1fQXqp4qRi6WGxxw8xTJ6naf-Si4',
    appId: '1:564334631063:ios:323f59637d3900538171d2',
    messagingSenderId: '564334631063',
    projectId: 'ecommerce-f6d64',
    storageBucket: 'ecommerce-f6d64.appspot.com',
    iosClientId:
        '564334631063-3ce7d8907opi8ib4v6j04p3c4m8vlrs1.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce.RunnerTests',
  );
}
