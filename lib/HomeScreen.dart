
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:online_library/AdminsLogin.dart';
import 'package:online_library/UsersLogin.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  height: 50,
                  width: 50,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                        image: new AssetImage('assets/images/logo.jpeg'))
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ElevatedButton(
              style: style,
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => UsersLogin())
                );
                },
                child: const Text('Users')
            ),
            ElevatedButton(
              style: style,
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AdminsLogin())
                );
                },
                child: const Text('Admins')
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

