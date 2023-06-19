
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
    apiKey: 'AIzaSyAl_ShdDfxPbQ72IBaPZl6P768Y7uk8qdQ',
    appId: '1:51469879162:web:c2e463e0ef28a0aca4b8c3',
    messagingSenderId: '51469879162',
    projectId: 'filmbilgi2',
    authDomain: 'filmbilgi2.firebaseapp.com',
    storageBucket: 'filmbilgi2.appspot.com',
    measurementId: 'G-PCRMPKK8D6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDA6ZGADazr_kz_4V7w-DCgqcY3U5CyJjI',
    appId: '1:51469879162:android:688a3778b6a7d462a4b8c3',
    messagingSenderId: '51469879162',
    projectId: 'filmbilgi2',
    storageBucket: 'filmbilgi2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBl-eDfODUrLZcidfyAHA1d1mVJusSIOeE',
    appId: '1:51469879162:ios:a5021c5c511e2f6aa4b8c3',
    messagingSenderId: '51469879162',
    projectId: 'filmbilgi2',
    storageBucket: 'filmbilgi2.appspot.com',
    iosClientId: '51469879162-t4drsmduvou2vrfgit55si82luhg601p.apps.googleusercontent.com',
    iosBundleId: 'com.example.filmBilgi',
  );
}
