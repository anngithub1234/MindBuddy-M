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
    apiKey: 'AIzaSyCjw6fGpKdDTAZh9yXzdkgfVaijA9u3MjU',
    appId: '1:350673726317:web:fd859eb8ea7e199f86c864',
    messagingSenderId: '350673726317',
    projectId: 'fluttermind-2c29a',
    authDomain: 'fluttermind-2c29a.firebaseapp.com',
    storageBucket: 'fluttermind-2c29a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRPS0zG_JOsoTyuB948GuAkRE0QzWNRgM',
    appId: '1:350673726317:android:afca1d4b678e57d886c864',
    messagingSenderId: '350673726317',
    projectId: 'fluttermind-2c29a',
    storageBucket: 'fluttermind-2c29a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCEWxu0STcP-Xa_KJVWy5-zu4z3O6STnQ',
    appId: '1:350673726317:ios:b75733ccb64db5ad86c864',
    messagingSenderId: '350673726317',
    projectId: 'fluttermind-2c29a',
    storageBucket: 'fluttermind-2c29a.appspot.com',
    iosClientId: '350673726317-6d5hc9p4i33q6d65mefatumb1gsttea3.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterMind',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCEWxu0STcP-Xa_KJVWy5-zu4z3O6STnQ',
    appId: '1:350673726317:ios:b75733ccb64db5ad86c864',
    messagingSenderId: '350673726317',
    projectId: 'fluttermind-2c29a',
    storageBucket: 'fluttermind-2c29a.appspot.com',
    iosClientId: '350673726317-6d5hc9p4i33q6d65mefatumb1gsttea3.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterMind',
  );
}
