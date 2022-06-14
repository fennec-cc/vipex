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

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderView(),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  alignment: Alignment(HeaderViewController.instance.displayExplorer ? -1 : 1, 0),
                  child: ExplorerView(
                    display: HeaderViewController.instance.displayExplorer,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.deepOrangeAccent,
                    alignment: Alignment.center,
                    child: Text("MIDDLE"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
