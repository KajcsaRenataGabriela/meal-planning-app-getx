// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
    apiKey: 'AIzaSyDsLAfxJx-l1mFT4p0gwPHW1oiIsXY47c4',
    appId: '1:518842412519:web:8146e0b0522db04e202142',
    messagingSenderId: '518842412519',
    projectId: 'meal-planning-app-getx',
    authDomain: 'meal-planning-app-getx.firebaseapp.com',
    storageBucket: 'meal-planning-app-getx.appspot.com',
    measurementId: 'G-3NLSH82FDB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDh4EyaCBwP83rvgH7Y_V_WE_FFiD8oVR4',
    appId: '1:518842412519:android:a4f840444d2e0012202142',
    messagingSenderId: '518842412519',
    projectId: 'meal-planning-app-getx',
    storageBucket: 'meal-planning-app-getx.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApec3cy8lhcEjZEGnSuI1cbpGyicf-aFQ',
    appId: '1:518842412519:ios:5cc6628fdc0ea008202142',
    messagingSenderId: '518842412519',
    projectId: 'meal-planning-app-getx',
    storageBucket: 'meal-planning-app-getx.appspot.com',
    iosClientId: '518842412519-2egsqto6obrs0h7bd8i641gul3fp7s72.apps.googleusercontent.com',
    iosBundleId: 'com.krg.mealPlanningAppGetx',
  );
}
