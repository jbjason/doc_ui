import 'package:doc_ui/common_widgets/cm_float_button.dart';
import 'package:doc_ui/constants/my_color.dart';
import 'package:doc_ui/widgets/my_clippers.dart';
import 'package:doc_ui/screens/details_screen.dart';
import 'package:doc_ui/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CmNavbar extends StatelessWidget {
  const CmNavbar(
      {super.key,
      required this.floatShadow,
      required this.navColor,
      required this.floatColor,
      required this.screen,
      required this.floatBackColor});
  final Color navColor, floatBackColor, floatColor;
  final List<Color> floatShadow;
  final String screen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTrue = screen.contains('home');
    return SizedBox(
      height: kToolbarHeight + 40,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: ClipPath(
              clipper: MyClipperNavBarClip(),
              child: Container(
                  color: isTrue ? MyColor.ashhLight : MyColor.dFloatColor),
            ),
          ),
          Positioned.fill(
            top: 4,
            child: ClipPath(
              clipper: MyClipperNavBarClip(),
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                color: navColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        isTrue
                            ? null
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomeScreen()));
                      },
                      child: Image.asset('assets/mydoc/icon/home.png',
                          color: MyColor.buttonColor,
                          width: 30,
                          height: 30,
                          fit: BoxFit.contain),
                    ),
                    const SizedBox(width: 1),
                    InkWell(
                      onTap: () {
                        isTrue
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const DetailsScreen()))
                            : null;
                      },
                      child: const Icon(CupertinoIcons.clock,
                          color: MyColor.buttonColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -22,
            left: size.width / 2 - 43,
            child: CmFloatButton(
              floatBackColor: floatBackColor,
              floatColor: floatColor,
              floawShadow: floatShadow,
            ),
          ),
        ],
      ),
    );
  }
}
