import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LearderboardItemWidget extends StatelessWidget {
  const LearderboardItemWidget({
    super.key,
    required this.svgPath,
    required this.text,
    required this.color,
    required this.containerHeight,
    required this.contianerWidth,
    required this.svgHeight,
    required this.svgWidth,
    required this.ltxtsize,
  });
  final String svgPath;
  final String text;
  final Color color;
  final double containerHeight;
  final double contianerWidth;
  final double svgHeight;
  final double svgWidth;
  final double ltxtsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: containerHeight,
          width: contianerWidth,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: SvgPicture.asset(
              svgPath,
              width: svgWidth,
              height: svgHeight,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: ltxtsize,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
