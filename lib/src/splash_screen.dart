import 'dart:async';

import 'package:flutter/material.dart';

import 'common/theme/theme_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ThemeHelper t = ThemeHelper();
  bool isLogedIn = false;
  @override
  void initState() {
    super.initState();
    getAuthToken();
    Timer(const Duration(seconds: 2), () {
      // if (isLogedIn) context.router.popAndPush(const DashboardScreen());
      // if (!isLogedIn) context.router.popAndPush(const LoginScreen());
    });
  }

  getAuthToken() async {
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // isLogedIn = pref.getString(TOKEN_KEY) != null ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [],
        ),
      ),
    );
  }
}
