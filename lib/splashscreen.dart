// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:aqurvent_career/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late String logo = "";
  late bool logoCheck = false;

  late bool loggedCheck = false;

  late bool isStudent = false;

  @override
  void initState() {
    super.initState();

    // app.appController.getLocation();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: initScreen(context),
      backgroundColor: Colors.white,
    );
  }

  startTime() async {
    // SharedPref _prefs = await SharedPref();

    print(logoCheck);

    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  initScreen(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/splash_logo.png"),
              height: 300.0,
              width: 300.0,
              alignment: AlignmentDirectional.center,
            ),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.black,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
