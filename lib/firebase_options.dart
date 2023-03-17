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
    apiKey: 'AIzaSyC2gfA7KA0Nq2i83RSnEihG84lK8h1wEHw',
    appId: '1:604589871090:web:9c704fa2c8ac29b399a56b',
    messagingSenderId: '604589871090',
    projectId: 'portfolio-a9dd7',
    authDomain: 'portfolio-a9dd7.firebaseapp.com',
    storageBucket: 'portfolio-a9dd7.appspot.com',
    measurementId: 'G-NZ25PC3XQK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBSAyvvVybjjC6TdZN7naFrBzVE65xB3o',
    appId: '1:604589871090:android:c3eb1eb68f1dce0499a56b',
    messagingSenderId: '604589871090',
    projectId: 'portfolio-a9dd7',
    storageBucket: 'portfolio-a9dd7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcoBTO2Fb-iYzHI_NWTIQZ5mVSbDSeKO0',
    appId: '1:604589871090:ios:849f858c7411bbad99a56b',
    messagingSenderId: '604589871090',
    projectId: 'portfolio-a9dd7',
    storageBucket: 'portfolio-a9dd7.appspot.com',
    iosClientId: '604589871090-llmprep3dee2v7g0da896dm9d7g4h4qs.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcoBTO2Fb-iYzHI_NWTIQZ5mVSbDSeKO0',
    appId: '1:604589871090:ios:849f858c7411bbad99a56b',
    messagingSenderId: '604589871090',
    projectId: 'portfolio-a9dd7',
    storageBucket: 'portfolio-a9dd7.appspot.com',
    iosClientId: '604589871090-llmprep3dee2v7g0da896dm9d7g4h4qs.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfolio',
  );
}