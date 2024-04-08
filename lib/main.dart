import 'package:flutter/material.dart';
import 'package:solar_system_explorer/firebase_options.dart';
import 'screens/image_carousel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    // options: FirebaseOptions(
    //   apiKey: "AIzaSyAQ4O801k6pCZXvDxbblyUdjcMcoj8ocfE",
    //   projectId: "solarsystemexplorer",
    //   messagingSenderId: "67786755143",
    //   appId: "1:67786755143:web:0684967db9b4f68f5c3562",
    // ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black54,
      ),
      home: ImageCarousel(),
    );
  }
}
