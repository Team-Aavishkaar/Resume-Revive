import 'package:resume_revive/core/router/router.dart';
import 'package:resume_revive/core/theme/theme.dart';
import 'package:resume_revive/features/auth/presentation/auth_screen.dart';
import 'package:resume_revive/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp.router(
        routerConfig: router,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light, // Automatically switches based on system preference
        debugShowCheckedModeBanner: false,
      );
    }
}