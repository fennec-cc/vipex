import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipex/views/explorer/explorer_view.dart';
import 'package:vipex/views/header_view.dart';
import 'package:vipex/views/header_view_controller.dart';
import 'package:vipex/views/viewer/viewer_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Infynyte Dysplay',
        scaffoldBackgroundColor: Colors.black87,
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.blue,
          decorationColor: Colors.red,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    Timer(const Duration(milliseconds: 0), () => _animationController.forward());

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderView(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExplorerView(
                animationController: _animationController,
              ),
              const Expanded(
                child: ViewerView(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
