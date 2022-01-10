import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_fundamental/counter_provider.dart';
import 'package:provider_fundamental/home_page.dart';
import 'package:provider_fundamental/splash_screen.dart';
import 'package:provider_fundamental/user_provider.dart';
import 'package:provider_fundamental/weight_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WeightProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
