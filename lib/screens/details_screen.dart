import 'package:doc_ui/common_widgets/cm_appbar.dart';
import 'package:doc_ui/common_widgets/cm_navbar.dart';
import 'package:doc_ui/constants/my_color.dart';
import 'package:doc_ui/widgets/details_widgets/details_blue_body.dart';
import 'package:doc_ui/widgets/details_widgets/details_recent_text.dart';
import 'package:doc_ui/widgets/details_widgets/details_white_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColor.ashhLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // AppBar
          const SizedBox(
            height: kToolbarHeight + 60,
            child: CmAppbar(color: MyColor.ashDark),
          ),
          const DetailsRecentText(),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // bottom Blue body
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: size.height * .415,
                  child: const DetailsBlueBody(),
                ),
                // white body
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: size.height * .58,
                  child: const DetailsWhiteBody(),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: CmNavbar(
        screen: 'details',
        navColor: MyColor.blueDark,
        floatBackColor: MyColor.blueDark,
        floatColor: MyColor.dFloatColor,
        floatShadow: [MyColor.blueDark, MyColor.dFloatColor.withOpacity(0.6)],
      ),
    );
  }
}
