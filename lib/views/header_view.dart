import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: Text("BUTTON"),
            onPressed: () => {},
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.view_sidebar_sharp),
            // icon: Transform.scale(
            //   scaleX: -1,
            //   child: const Icon(Icons.view_sidebar_sharp),
            // ),
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
            onPressed: () => {},
            icon: const Icon(Icons.view_sidebar),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
