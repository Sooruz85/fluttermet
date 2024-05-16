import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBqopAga6dTctbsdanO5jIdkNKSgvwPcKg",
            authDomain: "fluttermet2023-93007.firebaseapp.com",
            projectId: "fluttermet2023-93007",
            storageBucket: "fluttermet2023-93007.appspot.com",
            messagingSenderId: "77334349707",
            appId: "1:77334349707:web:39db467a9c0553b325518e"));
  } else {
    await Firebase.initializeApp();
  }
}
