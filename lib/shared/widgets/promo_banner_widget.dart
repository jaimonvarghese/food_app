import 'package:flutter/material.dart';

class PromoBannerWidget extends StatelessWidget {
  const PromoBannerWidget({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/promobanner.png'),
        ),
      ),
    );
  }
}
