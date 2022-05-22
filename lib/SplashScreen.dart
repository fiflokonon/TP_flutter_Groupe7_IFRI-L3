
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:online_library/HomeScreen.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    super.initState();
    Timer(const Duration(seconds: 3), () { Navigator.push(context, MaterialPageRoute(
        builder: (context) => HomeScreen())
    );});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.indigo[900],
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: 200.0,
                height: 150.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('assets/images/logo.jpeg')
                    )
                ),
              ),
              CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
