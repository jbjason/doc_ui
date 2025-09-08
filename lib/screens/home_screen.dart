import 'package:doc_ui/common_widgets/cm_appbar.dart';
import 'package:doc_ui/common_widgets/cm_navbar.dart';
import 'package:doc_ui/constants/my_color.dart';
import 'package:doc_ui/widgets/home_widgets/home_blue_body.dart';
import 'package:doc_ui/widgets/home_widgets/home_white_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColor.blueLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // AppBar
          const SizedBox(
            height: kToolbarHeight + 60,
            child: CmAppbar(color: MyColor.blueMDark),
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
                        color: MyColor.ashDark,
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
      bottomNavigationBar: const CmNavbar(
        screen: 'home',
        navColor: MyColor.ashDark,
        floatShadow: [Colors.white, MyColor.dFloatColor],
        floatColor: MyColor.blueLight,
        floatBackColor: MyColor.ashhLight,
      ),
    );
  }
}
