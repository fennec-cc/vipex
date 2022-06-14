import 'package:flutter/material.dart';
import 'package:vipex/views/header_view_controller.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => {HeaderViewController.instance.toggleDisplayExplorer()},
            icon: Transform.scale(
              scaleX: -1,
              child: const Icon(Icons.view_sidebar_sharp),
            ),
            color: Colors.white,
          ),
          const Text(
            "VIPEX",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () => {HeaderViewController.instance.toggleDisplayExplorer()},
            icon: const Icon(Icons.view_sidebar),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
