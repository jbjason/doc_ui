import 'package:doc_ui/constants/my_color.dart';
import 'package:doc_ui/constants/my_image.dart';
import 'package:doc_ui/widgets/my_clippers.dart';
import 'package:flutter/material.dart';

class CmAppbar extends StatelessWidget {
  const CmAppbar({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned.fill(
          child: ClipPath(
            clipper: MyClipperAppbarClip(),
            child: Container(
              alignment: Alignment.center,
              color: color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(MyImage.cloud1Img,
                      color: MyColor.buttonColor,
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain),
                  const SizedBox(width: 1),
                  const Icon(Icons.menu, color: MyColor.buttonColor),
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
            child: Image.asset(MyImage.user1Img,
                width: 30, height: 30, fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }
}
