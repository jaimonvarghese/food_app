import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.txt,
    required this.txtsize,
    required this.flContainerHeight,
    required this.flContainerWidth,
  });
  final String txt;
  final double txtsize;
  final double flContainerHeight;
  final double flContainerWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: flContainerWidth,
      height: flContainerHeight,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Center(child: Text(txt, style: TextStyle(fontSize: txtsize))),
    );
  }
}
