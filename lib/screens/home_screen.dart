import 'package:doc_ui/common_widgets/common_appbar.dart';
import 'package:doc_ui/common_widgets/common_navbar.dart';
import 'package:doc_ui/models/doc.dart';
import 'package:doc_ui/widgets/home_widgets/home_blue_body.dart';
import 'package:doc_ui/widgets/home_widgets/home_white_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blueLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // AppBar
          const SizedBox(
            height: kToolbarHeight + 60,
            child: CommonAppbar(color: blueMDark),
          ),
          // body
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // SearchBox ,total MyDocs Container
                Positioned(
                  left: 0,
                  right: 0,
                  height: size.height * .4,
                  child: const HomeBlueBody(),
                ),
                // white body
                Positioned(
                  top: size.height * .2,
                  height: size.height * .7,
                  left: 0,
                  right: 0,
                  child: const HomeWhiteBody(),
                ),
                // bottom White Shadow
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: size.height * .13,
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: ashDark,
                        spreadRadius: 2,
                        blurRadius: 50,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: const CommonNavbar(
        screen: 'home',
        navColor: ashDark,
        floatShadow: [Colors.white, dFloatColor],
        floatColor: blueLight,
        floatBackColor: ashhLight,
      ),
    );
  }
}
