import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function()? prss;
  final String text;
  final double vreticalPress;
  final double fontSize;

  const RoundButton({
    super.key,
    this.prss,
    required this.text,
    this.vreticalPress = 16,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: prss,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: vreticalPress),
        padding: EdgeInsets.symmetric(
          horizontal: 35,
          vertical: vreticalPress,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 25,
              color: Colors.black.withOpacity(0.5),
            )
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
