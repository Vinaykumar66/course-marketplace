import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'Web Firebase config not set up yet — register a Web app in Firebase Console first.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError('Unsupported platform');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUAmZ5Mz6TgGegUTbim05Sc1WGQ2dkRO4',
    appId: '1:128222078883:android:9e4ebb8305fff5b31f5c16',
    messagingSenderId: '128222078883',
    projectId: 'course-marketplace-21ffd',
    storageBucket: 'course-marketplace-21ffd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAbd2ECgsWAsgOyTBIWEbXFNfupO6GaVRU',
    appId: '1:128222078883:ios:8b2995df2cbc52391f5c16',
    messagingSenderId: '128222078883',
    projectId: 'course-marketplace-21ffd',
    storageBucket: 'course-marketplace-21ffd.firebasestorage.app',
    iosBundleId: 'com.vinay.course-marketplace',
  );
}
