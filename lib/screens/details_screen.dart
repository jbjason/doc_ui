import 'package:doc_ui/common_widgets/common_appbar.dart';
import 'package:doc_ui/common_widgets/common_navbar.dart';
import 'package:doc_ui/models/doc.dart';
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
      backgroundColor: ashhLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // AppBar
          const SizedBox(
            height: kToolbarHeight + 60,
            child: CommonAppbar(color: ashDark),
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
      bottomNavigationBar: CommonNavbar(
        screen: 'details',
        navColor: blueDark,
        floatBackColor: blueDark,
        floatColor: dFloatColor,
        floatShadow: [blueDark, dFloatColor.withOpacity(0.6)],
      ),
    );
  }
}
