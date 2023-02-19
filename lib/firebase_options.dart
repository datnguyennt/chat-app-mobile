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
    apiKey: 'AIzaSyCuIkpGGZBBkyz1A2xH0wExmNwaPe7T66Y',
    appId: '1:335961087238:web:7de0484f9dfd6c33b11287',
    messagingSenderId: '335961087238',
    projectId: 'chat-app-a51cb',
    authDomain: 'chat-app-a51cb.firebaseapp.com',
    storageBucket: 'chat-app-a51cb.appspot.com',
    measurementId: 'G-CRB3XWH6WL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuYOCwHgfFk3-YcM73zhYV7t7RqNaUKLU',
    appId: '1:335961087238:android:160585df5879da12b11287',
    messagingSenderId: '335961087238',
    projectId: 'chat-app-a51cb',
    storageBucket: 'chat-app-a51cb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqinMtSuygUs1ml6mCxWQUMXUIxj70Ffk',
    appId: '1:335961087238:ios:9b70ce9c65ed4569b11287',
    messagingSenderId: '335961087238',
    projectId: 'chat-app-a51cb',
    storageBucket: 'chat-app-a51cb.appspot.com',
    iosClientId: '335961087238-q1qsilb3rjmkjt9589ucv4i4odkq98em.apps.googleusercontent.com',
    iosBundleId: 'com.datntt.chatapp.chatApp',
  );
}
