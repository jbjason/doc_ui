import 'package:doc_ui/common_widgets/doc_appbar.dart';
import 'package:doc_ui/common_widgets/doc_navbar.dart';
import 'package:doc_ui/doc.dart';
import 'package:doc_ui/doc_details/docd_blue_body.dart';
import 'package:doc_ui/doc_details/docd_recent_text.dart';
import 'package:doc_ui/doc_details/docd_white_body.dart';
import 'package:flutter/material.dart';

class DocDetailsScreen extends StatelessWidget {
  const DocDetailsScreen({super.key});

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
            child: DocAppBar(color: ashDark),
          ),
          const DocDRecentText(),
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
                  child: const DocDBlueBody(),
                ),
                // white body
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: size.height * .58,
                  child: const DocDWhiteBody(),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: DocNavBar(
        screen: 'details',
        navColor: blueDark,
        floatBackColor: blueDark,
        floatColor: dFloatColor,
        floatShadow: [blueDark, dFloatColor.withOpacity(0.6)],
      ),
    );
  }
}
