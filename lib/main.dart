import 'package:chat_app/app/theme/app_theme.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

// Ideal time to initialize
// await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeController().themeMode,
    ),
  );
}