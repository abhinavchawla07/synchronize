import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAwcrPY3cDUsLNcq1pfARY25llqhz9sKmU',
    appId: '1:675077066268:web:f23863c7fc2757349499d9',
    messagingSenderId: '675077066268',
    projectId: 'synchronize-ar',
    authDomain: 'synchronize-ar.firebaseapp.com',
    storageBucket: 'synchronize-ar.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_RUU8AdRrS2GijufRg89X_nnRp-iVbPA',
    appId: '1:675077066268:android:6b0a3bda2e607cdc9499d9',
    messagingSenderId: '675077066268',
    projectId: 'synchronize-ar',
    storageBucket: 'synchronize-ar.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqHXVd5pWPhfMC72FvL5RyNvBUAkPyElw',
    appId: '1:675077066268:ios:f5db6aaef174493a9499d9',
    messagingSenderId: '675077066268',
    projectId: 'synchronize-ar',
    storageBucket: 'synchronize-ar.appspot.com',
    iosClientId: '675077066268-jjrvitnvjmjjsuiun19a7sj8bf0n28cp.apps.googleusercontent.com',
    iosBundleId: 'com.augmentedreality.synchronize',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqHXVd5pWPhfMC72FvL5RyNvBUAkPyElw',
    appId: '1:675077066268:ios:f5db6aaef174493a9499d9',
    messagingSenderId: '675077066268',
    projectId: 'synchronize-ar',
    storageBucket: 'synchronize-ar.appspot.com',
    iosClientId: '675077066268-jjrvitnvjmjjsuiun19a7sj8bf0n28cp.apps.googleusercontent.com',
    iosBundleId: 'com.augmentedreality.synchronize',
  );
}
