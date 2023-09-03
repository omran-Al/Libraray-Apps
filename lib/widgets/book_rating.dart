import 'package:flutter/material.dart';

import '../resources/color_apps.dart';

class BookRating extends StatelessWidget {
  final IconData? iconData;
  final String rating;
  BookRating({
    super.key,
    this.iconData = Icons.star_border_outlined,
    this.rating = "4.9",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 7),
              blurRadius: 20,
              color: kShadowColor,
            ),
          ]),
      child: Column(
        children: [
          Icon(
            iconData,
            size: 10,
            color: kIconColor,
          ),
          const SizedBox(height: 5),
          Text(
            rating,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
