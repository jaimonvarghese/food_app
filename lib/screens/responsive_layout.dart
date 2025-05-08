import 'package:flutter/material.dart';
import 'package:food_app/screens/home/mobile_layout.dart';
import 'package:food_app/screens/home/tablet_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          
          return MobileLayout();
        } else {
          
          return TabletLayout();
        }
      },
    );
  }
}
