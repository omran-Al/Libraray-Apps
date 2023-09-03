import 'package:flutter/material.dart';

import '../resources/color_apps.dart';

class TwoSideButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final double rdiuos;
  const TwoSideButton({
    super.key,
    this.text = "Read",
    this.rdiuos = 29,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(rdiuos),
              bottomRight: Radius.circular(rdiuos)),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
