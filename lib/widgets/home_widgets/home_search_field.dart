import 'package:doc_ui/constants/my_color.dart';
import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: MyColor.dFloatColor.withOpacity(.3),
              offset: const Offset(-0.5, 0.5),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: MyColor.blueDark,
              offset: Offset(1.5, -2.5),
              blurRadius: 1.0,
              spreadRadius: 2.5,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: MyColor.dFloatColor.withOpacity(.3),
                offset: const Offset(-0.5, 0.5),
                blurRadius: 1.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: MyColor.searchColor.withOpacity(0.3),
                offset: const Offset(5.0, -5.0),
                blurRadius: 1.0,
                spreadRadius: 1.0,
              ),
            ],
            gradient: LinearGradient(
              colors: [
                MyColor.searchColor,
                MyColor.searchColor.withOpacity(0.8),
                MyColor.searchColor.withOpacity(0.5),
                MyColor.searchColor.withOpacity(0.3),
              ],
            ),
          ),
          child: const TextField(
            textAlign: TextAlign.start,
            style: TextStyle(color: MyColor.ashhLight),
            cursorColor: MyColor.buttonColor,
            decoration: InputDecoration(
              fillColor: Colors.red,
              labelText: 'Search...',
              labelStyle: TextStyle(
                fontSize: 13, // or whatever
                height: 1,
                color: MyColor.ashhLight,
              ),
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search, color: MyColor.buttonColor),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ),
      ),
    );
  }
}
