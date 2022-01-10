import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_fundamental/home_page.dart';
import 'package:provider_fundamental/login_page.dart';
import 'package:provider_fundamental/user_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (await userProvider.checkToken()) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            }
          },
          child: Text(
            'Get Token',
          ),
        ),
      ),
    );
  }
}
