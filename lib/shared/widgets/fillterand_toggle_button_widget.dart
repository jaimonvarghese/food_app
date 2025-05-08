import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/filter_button.dart';
import 'package:food_app/shared/widgets/toggle_button_widget.dart';

class FilterandToggleButtonsWidget extends StatelessWidget {
  const FilterandToggleButtonsWidget({
    super.key,
    required this.txtsize,
    required this.flContainerHeight,
    required this.flContainerWidth,
  });
  final double txtsize;
  final double flContainerHeight;
  final double flContainerWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilterButton(
          txt: 'under 200 🍎',
          txtsize: txtsize,
          flContainerHeight: flContainerHeight,
          flContainerWidth: flContainerWidth,
        ),
        SizedBox(width: 15),
        FilterButton(
          txt: 'top rated 🍴',
          txtsize: txtsize,
          flContainerHeight: flContainerHeight,
          flContainerWidth: flContainerWidth,
        ),
        Spacer(),
        ToggleButtonWidget(
        ),
      ],
    );
  }
}
