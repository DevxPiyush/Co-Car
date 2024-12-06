import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAGTwl0jsB7zTfMofdi2q_xP4qA-MrvPUg",
            authDomain: "co-car-tw9ggz.firebaseapp.com",
            projectId: "co-car-tw9ggz",
            storageBucket: "co-car-tw9ggz.firebasestorage.app",
            messagingSenderId: "784456114698",
            appId: "1:784456114698:web:428f5408ff338fa35835f3"));
  } else {
    await Firebase.initializeApp();
  }
}
