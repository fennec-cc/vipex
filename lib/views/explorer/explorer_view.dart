import 'package:flutter/material.dart';

class ExplorerView extends StatefulWidget {
  bool display = true;

  ExplorerView({Key? key, required this.display}) : super(key: key);

  @override
  State<ExplorerView> createState() => _ExplorerViewState();
}

class _ExplorerViewState extends State<ExplorerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: Colors.blue,
      child: Column(
        children: const [
          Text("111"),
          Text("111"),
        ],
      ),
    );
  }
}
