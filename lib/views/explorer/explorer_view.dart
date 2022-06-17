import 'package:flutter/material.dart';
import 'package:vipex/views/header_view_controller.dart';

class ExplorerView extends StatelessWidget {
  final AnimationController animationController;

  const ExplorerView({Key? key, required this.animationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SlideTransition(
    //   position: Tween<Offset>(
    //     begin: const Offset(-1, 0),
    //     end: Offset.zero,
    //   ).animate(animationController),
    //   child: Container(
    //     color: Colors.blue,
    //     alignment: Alignment.topCenter,
    //     constraints: BoxConstraints.tightForFinite(
    //       width: HeaderViewController.instance.displayExplorer ? 240 : 0,
    //     ),
    //     child: Column(
    //       children: [
    //         IconButton(
    //           icon: Icon(Icons.photo),
    //           onPressed: () => print(HeaderViewController.instance.displayExplorer),
    //         ),
    //         Text("111"),
    //       ],
    //     ),
    //   ),
    // );
    return Container(
      color: Colors.blue,
      alignment: Alignment.topCenter,
      constraints: BoxConstraints.tightForFinite(
        width: HeaderViewController.instance.displayExplorer ? 240 : 0,
      ),
      child: Column(
        children: [
          IconButton(
            icon: Icon(Icons.photo),
            onPressed: () => print(HeaderViewController.instance.displayExplorer),
          ),
          Text("111"),
        ],
      ),
    );
  }
}
