import 'package:babyshophub/Admin/admin_console.dart';
import 'package:babyshophub/User/homescreen.dart';
import 'package:babyshophub/User/login_screen.dart';
import 'package:babyshophub/User/product_catalog.dart';
import 'package:babyshophub/User/register_screen.dart';
import 'package:babyshophub/User/splashscreen.dart';
// import 'package:babyshophub/login_screen.dart';
// import 'package:babyshophub/User/home.dart';
import 'package:babyshophub/User/welcome_screen.dart';
import 'package:babyshophub/User/wishlist_screen.dart';
// import 'package:babyshophub/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// import 'package:babyshophub/register_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BabyShopHub',
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
