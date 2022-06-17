import 'package:flutter/material.dart';

class ViewerView extends StatelessWidget {
  const ViewerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: Column(
          children: const [
            Text("111"),
            Text("111"),
          ],
        ),
      ),
    );
  }
}
