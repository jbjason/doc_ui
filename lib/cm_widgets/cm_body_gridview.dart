import 'package:doc_ui/constants/my_color.dart';
import 'package:doc_ui/constants/my_contants.dart';
import 'package:flutter/material.dart';

class CmBodyGridview extends StatelessWidget {
  const CmBodyGridview({super.key, required this.screen});
  final String screen;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
      ),
      itemCount: MyContants.myDocs.length,
      itemBuilder: (context, i) {
        final index = screen == 'det' ? MyContants.myDocs.length - i - 1 : i;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(.5),
                      Colors.white.withOpacity(.3),
                    ],
                  ),
                ),
                child: Image.asset(MyContants.myDocs[index].img,
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              MyContants.myDocs[index].title,
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: MyColor.blueDark),
            ),
            Text(
              MyContants.myDocs[index].subTitle,
              style: const TextStyle(color: MyColor.buttonColor2, fontSize: 11),
            )
          ],
        );
      },
    );
  }
}
