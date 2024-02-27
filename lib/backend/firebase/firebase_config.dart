import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAqTb4yJjv3BEb-4WLWypWN7Oki9hFsuXs",
            authDomain: "bharate-e6aed.firebaseapp.com",
            projectId: "bharate-e6aed",
            storageBucket: "bharate-e6aed.appspot.com",
            messagingSenderId: "208529015714",
            appId: "1:208529015714:web:c31ca5143969de4a0528fb"));
  } else {
    await Firebase.initializeApp();
  }
}
