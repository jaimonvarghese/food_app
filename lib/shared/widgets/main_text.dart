import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainText extends StatelessWidget {
  const MainText({
    super.key,
    required this.text1,
    required this.text2,
    required this.lineHeight,
    required this.lineWidth,
    required this.textSize,
    required this.text1Color,
    required this.text2Color,
  });
  final String text1;
  final String text2;
  final Color text1Color;
  final Color text2Color;
  final double lineHeight;
  final double lineWidth;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              'assets/svg/Line 1487.svg',
              height: lineHeight,
              width: lineWidth,
              fit: BoxFit.contain,
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.w800,
                color: text1Color
              ),

              children: [
                TextSpan(text: text1),
                TextSpan(
                  text: text2,
                  style: TextStyle(
                    color: text2Color,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
