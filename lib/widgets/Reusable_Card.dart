import 'package:flutter/material.dart';
class Reusable_card extends StatelessWidget {
  const Reusable_card({
    Key? key,
    required this.screenSize,
    required this.asset,
    required this.text,
  }) : super(key: key);

  final Size screenSize;
  final String asset;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenSize.width / 6,
          width: screenSize.width / 3.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset(
              asset,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: screenSize.height / 70,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
