import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/leaderboard_item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderboardWidget extends StatelessWidget {
  final double containerHeight;
  final double textsize;
  final double lcontainerHeight;
  final double lcontianerWidth;
  final double svgHeight;
  final double svgWidth;
  final double ltxtsize;

  const LeaderboardWidget({
    super.key,
    required this.containerHeight,
    required this.textsize,
    required this.lcontainerHeight,
    required this.lcontianerWidth,
    required this.svgHeight,
    required this.svgWidth, required this.ltxtsize,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: containerHeight,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leaderboard',
              style: GoogleFonts.poppins(
                fontSize: textsize,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LearderboardItemWidget(
                  svgPath: 'assets/svg/leaderboarditem1.svg',
                  text: 'Trent',
                  color: Color(0xFF0457FB),
                  containerHeight: lcontainerHeight,
                  contianerWidth: lcontianerWidth,
                  svgHeight: svgHeight,
                  svgWidth: svgWidth,
                  ltxtsize: ltxtsize,
                ),
                LearderboardItemWidget(
                  svgPath: 'assets/svg/leaderboarditem2.svg',
                  text: 'Nivara',
                  color: Color(0xFFF2B624),
                  containerHeight: lcontainerHeight,
                  contianerWidth: lcontianerWidth,
                  svgHeight: svgHeight,
                  svgWidth: svgWidth,
                  ltxtsize: ltxtsize
                ),
                LearderboardItemWidget(
                  svgPath: 'assets/svg/leaderboarditem3.svg',
                  text: 'NearHive',
                  color: Color(0xFFF4F4F4),
                  containerHeight: lcontainerHeight,
                  contianerWidth: lcontianerWidth,
                  svgHeight: svgHeight,
                  svgWidth: svgWidth,
                  ltxtsize: ltxtsize
                ),
                LearderboardItemWidget(
                  svgPath: 'assets/svg/leaderboarditem4.svg',
                  text: 'Pentora',
                  color: Color(0xFFF4F4F4),
                  containerHeight: lcontainerHeight,
                  contianerWidth: lcontianerWidth,
                  svgHeight: svgHeight,
                  svgWidth: svgWidth,
                  ltxtsize: ltxtsize
                ),
                LearderboardItemWidget(
                  svgPath: 'assets/svg/leaderboarditem5.svg',
                  text: 'Metaspaces',
                  color: Color(0xFF202020),
                  containerHeight: lcontainerHeight,
                  contianerWidth: lcontianerWidth,
                  svgHeight: svgHeight,
                  svgWidth: svgWidth,
                  ltxtsize: ltxtsize
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
