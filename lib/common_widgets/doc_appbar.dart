import 'package:doc_ui/doc.dart';
import 'package:doc_ui/doc_clippers.dart';
import 'package:flutter/material.dart';

class DocAppBar extends StatelessWidget {
  const DocAppBar({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned.fill(
          child: ClipPath(
            clipper: DocHAppbarClip(),
            child: Container(
              alignment: Alignment.center,
              color: color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/mydoc/doc_icon/cloud1.png',
                      color: buttonColor,
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain),
                  const SizedBox(width: 1),
                  const Icon(Icons.menu, color: buttonColor),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 18,
          left: width / 2 - 20,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Image.asset('assets/mydoc/icon/user1.png',
                width: 30, height: 30, fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }
}
