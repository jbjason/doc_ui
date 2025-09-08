import 'package:doc_ui/common_widgets/cm_body_gridview.dart';
import 'package:doc_ui/constants/my_color.dart';
import 'package:doc_ui/widgets/my_clippers.dart';
import 'package:flutter/material.dart';

class DetailsWhiteBody extends StatelessWidget {
  const DetailsWhiteBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned.fill(
          child: ClipPath(
            clipper: MyClipperDetailsBodyClip(),
            child: Container(color: MyColor.buttonColor),
          ),
        ),
        Positioned.fill(
          bottom: 5,
          child: ClipPath(
            clipper: MyClipperDetailsBodyClip(),
            child: Container(
              padding: EdgeInsets.only(
                  bottom: size.height * .1, left: 25, right: 25, top: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyColor.ashDark.withOpacity(0.4),
                    MyColor.ashDark.withOpacity(0.5),
                    MyColor.ashDark.withOpacity(0.6),
                    MyColor.blueLight.withOpacity(0.7),
                  ],
                ),
              ),
              child: const CmBodyGridview(screen: 'det'),
            ),
          ),
        ),
      ],
    );
  }
}
