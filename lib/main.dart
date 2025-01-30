import 'package:aclub/views/auth/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized(); // Ensure binding before Firebase initialization
  // await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926), // Design size based on the iPhone 13 Pro Max dimensions
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ACLUB',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
              home:  SplashScreen(),
        );
      },
    );
  }
}
