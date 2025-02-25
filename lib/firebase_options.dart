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
    apiKey: 'AIzaSyAQVO3MiO9nckC5PckUEXYvQvmXip68uM8',
    appId: '1:818442865097:web:04cfadc48c460568a78018',
    messagingSenderId: '818442865097',
    projectId: 'formulario-uesb-teste',
    authDomain: 'formulario-uesb-teste.firebaseapp.com',
    storageBucket: 'formulario-uesb-teste.appspot.com',
    measurementId: 'G-J81R6R9S9T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQVO3MiO9nckC5PckUEXYvQvmXip68uM8',
    appId: '1:818442865097:android:1f232a59d2ffb64aa78018',
    messagingSenderId: '818442865097',
    projectId: 'formulario-uesb-teste',
    storageBucket: 'formulario-uesb-teste.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDybPGNLSXilnpcVP_imN3TBOXH72OvZhA',
    appId: '1:818442865097:ios:24bd7f187ce531d8a78018',
    messagingSenderId: '818442865097',
    projectId: 'formulario-uesb-teste',
    storageBucket: 'formulario-uesb-teste.appspot.com',
    iosBundleId: 'com.example.engenhariaProjeto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDybPGNLSXilnpcVP_imN3TBOXH72OvZhA',
    appId: '1:818442865097:ios:24bd7f187ce531d8a78018',
    messagingSenderId: '818442865097',
    projectId: 'formulario-uesb-teste',
    storageBucket: 'formulario-uesb-teste.appspot.com',
    iosBundleId: 'com.example.engenhariaProjeto',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBhdlnBJL94cFoJEUKxgdtWZ3AwENSmrhU',
    appId: '1:818442865097:web:23e6902ecc124b1ca78018',
    messagingSenderId: '818442865097',
    projectId: 'formulario-uesb-teste',
    authDomain: 'formulario-uesb-teste.firebaseapp.com',
    storageBucket: 'formulario-uesb-teste.appspot.com',
    measurementId: 'G-E93TSNNWZ5',
  );

}