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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for windows - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1I-HYSMI2QQUKJWJFLhDGxHXn1g84MYw',
    appId: '1:252268803990:android:a361910b4f7bebc126cfb7',
    messagingSenderId: '252268803990',
    projectId: 'testnotification-e01a6',
    databaseURL:
        'https://testnotification-e01a6-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'testnotification-e01a6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AAIzaSyCuO7BsCjIqH4lMPTR7sawECYJqOEjEzCw',
    appId: '1:252268803990:ios:870c6749e3fd234026cfb7',
    messagingSenderId: '252268803990',
    projectId: 'testnotification-e01a6',
    databaseURL:
        'https://testnotification-e01a6-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'testnotification-e01a6.appspot.com',
    androidClientId:
        '252268803990-efnmrc20ht3ue1l8ti9qn4lk95t85ehj.apps.googleusercontent.com',
    iosClientId:
        '252268803990-9pngt3uiseabo94juc9f3lv958kk1q51.apps.googleusercontent.com',
    iosBundleId: 'com.ftl.testing',
  );
}
